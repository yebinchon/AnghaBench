
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* serio; } ;
struct psmouse {int pktsize; struct fsp_data* private; TYPE_3__ ps2dev; int cleanup; int reconnect; int disconnect; int protocol_handler; } ;
struct fsp_data {int ver; int rev; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int FSP_VER_STL3888_C0 ;
 int GFP_KERNEL ;
 int fsp_activate_protocol (struct psmouse*) ;
 int fsp_attribute_group ;
 int fsp_disconnect ;
 int fsp_drv_ver ;
 scalar_t__ fsp_get_revision (struct psmouse*,int*) ;
 int fsp_get_sn (struct psmouse*,int*) ;
 scalar_t__ fsp_get_version (struct psmouse*,int*) ;
 int fsp_process_byte ;
 int fsp_reconnect ;
 int fsp_reset ;
 int fsp_set_input_params (struct psmouse*) ;
 int kfree (struct fsp_data*) ;
 struct fsp_data* kzalloc (int,int ) ;
 int psmouse_err (struct psmouse*,char*,int) ;
 int psmouse_info (struct psmouse*,char*,int,int,int,int,int ) ;
 int sysfs_create_group (int *,int *) ;

int fsp_init(struct psmouse *psmouse)
{
 struct fsp_data *priv;
 int ver, rev, sn = 0;
 int error;

 if (fsp_get_version(psmouse, &ver) ||
     fsp_get_revision(psmouse, &rev)) {
  return -ENODEV;
 }
 if (ver >= FSP_VER_STL3888_C0) {

  fsp_get_sn(psmouse, &sn);
 }

 psmouse_info(psmouse,
       "Finger Sensing Pad, hw: %d.%d.%d, sn: %x, sw: %s\n",
       ver >> 4, ver & 0x0F, rev, sn, fsp_drv_ver);

 psmouse->private = priv = kzalloc(sizeof(struct fsp_data), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->ver = ver;
 priv->rev = rev;

 psmouse->protocol_handler = fsp_process_byte;
 psmouse->disconnect = fsp_disconnect;
 psmouse->reconnect = fsp_reconnect;
 psmouse->cleanup = fsp_reset;
 psmouse->pktsize = 4;

 error = fsp_activate_protocol(psmouse);
 if (error)
  goto err_out;


 error = fsp_set_input_params(psmouse);
 if (error)
  goto err_out;

 error = sysfs_create_group(&psmouse->ps2dev.serio->dev.kobj,
       &fsp_attribute_group);
 if (error) {
  psmouse_err(psmouse,
       "Failed to create sysfs attributes (%d)", error);
  goto err_out;
 }

 return 0;

 err_out:
 kfree(psmouse->private);
 psmouse->private = ((void*)0);
 return error;
}
