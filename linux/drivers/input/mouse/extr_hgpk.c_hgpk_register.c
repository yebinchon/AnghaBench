
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* serio; } ;
struct psmouse {int resetafter; scalar_t__ model; TYPE_2__ ps2dev; int dev; scalar_t__ resync_time; int reconnect; int disconnect; int poll; int protocol_handler; struct hgpk_data* private; } ;
struct hgpk_data {int mode; } ;
struct TYPE_10__ {int dattr; } ;
struct TYPE_9__ {int dattr; } ;
struct TYPE_8__ {int dattr; } ;
struct TYPE_6__ {int dev; } ;


 scalar_t__ HGPK_MODEL_C ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int hgpk_disconnect ;
 int hgpk_poll ;
 int hgpk_process_byte ;
 int hgpk_reconnect ;
 int hgpk_setup_input_device (int ,int *,int ) ;
 TYPE_5__ psmouse_attr_hgpk_mode ;
 TYPE_4__ psmouse_attr_powered ;
 TYPE_3__ psmouse_attr_recalibrate ;
 int psmouse_err (struct psmouse*,char*) ;

__attribute__((used)) static int hgpk_register(struct psmouse *psmouse)
{
 struct hgpk_data *priv = psmouse->private;
 int err;


 psmouse->protocol_handler = hgpk_process_byte;
 psmouse->poll = hgpk_poll;
 psmouse->disconnect = hgpk_disconnect;
 psmouse->reconnect = hgpk_reconnect;


 psmouse->resync_time = 0;

 psmouse->resetafter = 1024;

 hgpk_setup_input_device(psmouse->dev, ((void*)0), priv->mode);

 err = device_create_file(&psmouse->ps2dev.serio->dev,
     &psmouse_attr_powered.dattr);
 if (err) {
  psmouse_err(psmouse, "Failed creating 'powered' sysfs node\n");
  return err;
 }

 err = device_create_file(&psmouse->ps2dev.serio->dev,
     &psmouse_attr_hgpk_mode.dattr);
 if (err) {
  psmouse_err(psmouse,
       "Failed creating 'hgpk_mode' sysfs node\n");
  goto err_remove_powered;
 }


 if (psmouse->model >= HGPK_MODEL_C) {
  err = device_create_file(&psmouse->ps2dev.serio->dev,
      &psmouse_attr_recalibrate.dattr);
  if (err) {
   psmouse_err(psmouse,
        "Failed creating 'recalibrate' sysfs node\n");
   goto err_remove_mode;
  }
 }

 return 0;

err_remove_mode:
 device_remove_file(&psmouse->ps2dev.serio->dev,
      &psmouse_attr_hgpk_mode.dattr);
err_remove_powered:
 device_remove_file(&psmouse->ps2dev.serio->dev,
      &psmouse_attr_powered.dattr);
 return err;
}
