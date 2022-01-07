
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct input_dev* dev; struct hgpk_data* private; } ;
struct input_dev {int dummy; } ;
struct hgpk_data {int mode; } ;
typedef size_t ssize_t ;
typedef enum hgpk_mode { ____Placeholder_hgpk_mode } hgpk_mode ;


 size_t EINVAL ;
 size_t ENOMEM ;
 int HGPK_MODE_INVALID ;
 int PSMOUSE_CMD_MODE ;
 int PSMOUSE_INITIALIZING ;
 int hgpk_mode_from_name (char const*,size_t) ;
 int hgpk_reset_device (struct psmouse*,int) ;
 int hgpk_setup_input_device (struct input_dev*,struct input_dev*,int) ;
 struct input_dev* input_allocate_device () ;
 int input_free_device (struct input_dev*) ;
 int input_register_device (struct input_dev*) ;
 int input_unregister_device (struct input_dev*) ;
 int psmouse_set_state (struct psmouse*,int ) ;

__attribute__((used)) static ssize_t attr_set_mode(struct psmouse *psmouse, void *data,
        const char *buf, size_t len)
{
 struct hgpk_data *priv = psmouse->private;
 enum hgpk_mode old_mode = priv->mode;
 enum hgpk_mode new_mode = hgpk_mode_from_name(buf, len);
 struct input_dev *old_dev = psmouse->dev;
 struct input_dev *new_dev;
 int err;

 if (new_mode == HGPK_MODE_INVALID)
  return -EINVAL;

 if (old_mode == new_mode)
  return len;

 new_dev = input_allocate_device();
 if (!new_dev)
  return -ENOMEM;

 psmouse_set_state(psmouse, PSMOUSE_INITIALIZING);


 priv->mode = new_mode;
 err = hgpk_reset_device(psmouse, 0);
 if (err)
  goto err_try_restore;

 hgpk_setup_input_device(new_dev, old_dev, new_mode);

 psmouse_set_state(psmouse, PSMOUSE_CMD_MODE);

 err = input_register_device(new_dev);
 if (err)
  goto err_try_restore;

 psmouse->dev = new_dev;
 input_unregister_device(old_dev);

 return len;

err_try_restore:
 input_free_device(new_dev);
 priv->mode = old_mode;
 hgpk_reset_device(psmouse, 0);

 return err;
}
