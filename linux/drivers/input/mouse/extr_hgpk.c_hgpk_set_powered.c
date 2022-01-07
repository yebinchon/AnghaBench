
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {unsigned int powered; } ;
typedef int ssize_t ;


 int EINVAL ;
 int hgpk_toggle_powersave (struct psmouse*,unsigned int) ;
 int kstrtouint (char const*,int,unsigned int*) ;

__attribute__((used)) static ssize_t hgpk_set_powered(struct psmouse *psmouse, void *data,
    const char *buf, size_t count)
{
 struct hgpk_data *priv = psmouse->private;
 unsigned int value;
 int err;

 err = kstrtouint(buf, 10, &value);
 if (err)
  return err;

 if (value > 1)
  return -EINVAL;

 if (value != priv->powered) {




  err = hgpk_toggle_powersave(psmouse, value);
  if (!err)
   priv->powered = value;
 }

 return err ? err : count;
}
