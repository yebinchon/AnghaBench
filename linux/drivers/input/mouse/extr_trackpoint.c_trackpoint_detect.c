
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct trackpoint_data {size_t variant_id; size_t firmware_id; } ;
struct ps2dev {TYPE_1__* serio; } ;
struct psmouse {char* name; int vendor; struct trackpoint_data* private; TYPE_2__* dev; int disconnect; int reconnect; struct ps2dev ps2dev; } ;
struct TYPE_4__ {int propbit; } ;
struct TYPE_3__ {int dev; } ;


 int BTN_MIDDLE ;
 int ENOMEM ;
 int EV_KEY ;
 int GFP_KERNEL ;
 int INPUT_PROP_POINTER ;
 int INPUT_PROP_POINTING_STICK ;
 int TP_EXT_BTN ;
 size_t TP_VARIANT_IBM ;
 int __set_bit (int ,int ) ;
 int device_add_group (int *,int *) ;
 int input_set_capability (TYPE_2__*,int ,int ) ;
 int kfree (struct trackpoint_data*) ;
 struct trackpoint_data* kzalloc (int,int ) ;
 int psmouse_err (struct psmouse*,char*,int) ;
 int psmouse_info (struct psmouse*,char*,int ,size_t,size_t,size_t) ;
 int psmouse_warn (struct psmouse*,char*) ;
 int trackpoint_attr_group ;
 int trackpoint_defaults (struct trackpoint_data*) ;
 int trackpoint_disconnect ;
 scalar_t__ trackpoint_power_on_reset (struct ps2dev*) ;
 int trackpoint_read (struct ps2dev*,int ,size_t*) ;
 int trackpoint_reconnect ;
 int trackpoint_start_protocol (struct psmouse*,size_t*,size_t*) ;
 int trackpoint_sync (struct psmouse*,int) ;
 int * trackpoint_variants ;

int trackpoint_detect(struct psmouse *psmouse, bool set_properties)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 struct trackpoint_data *tp;
 u8 variant_id;
 u8 firmware_id;
 u8 button_info;
 int error;

 error = trackpoint_start_protocol(psmouse, &variant_id, &firmware_id);
 if (error)
  return error;

 if (!set_properties)
  return 0;

 tp = kzalloc(sizeof(*tp), GFP_KERNEL);
 if (!tp)
  return -ENOMEM;

 trackpoint_defaults(tp);
 tp->variant_id = variant_id;
 tp->firmware_id = firmware_id;

 psmouse->private = tp;

 psmouse->vendor = trackpoint_variants[variant_id];
 psmouse->name = "TrackPoint";

 psmouse->reconnect = trackpoint_reconnect;
 psmouse->disconnect = trackpoint_disconnect;

 if (variant_id != TP_VARIANT_IBM) {

  button_info = 0x33;
 } else {
  error = trackpoint_read(ps2dev, TP_EXT_BTN, &button_info);
  if (error) {
   psmouse_warn(psmouse,
         "failed to get extended button data, assuming 3 buttons\n");
   button_info = 0x33;
  } else if (!button_info) {
   psmouse_warn(psmouse,
         "got 0 in extended button data, assuming 3 buttons\n");
   button_info = 0x33;
  }
 }

 if ((button_info & 0x0f) >= 3)
  input_set_capability(psmouse->dev, EV_KEY, BTN_MIDDLE);

 __set_bit(INPUT_PROP_POINTER, psmouse->dev->propbit);
 __set_bit(INPUT_PROP_POINTING_STICK, psmouse->dev->propbit);

 if (variant_id != TP_VARIANT_IBM ||
     trackpoint_power_on_reset(ps2dev) != 0) {



  trackpoint_sync(psmouse, 0);
 }

 error = device_add_group(&ps2dev->serio->dev, &trackpoint_attr_group);
 if (error) {
  psmouse_err(psmouse,
       "failed to create sysfs attributes, error: %d\n",
       error);
  kfree(psmouse->private);
  psmouse->private = ((void*)0);
  return -1;
 }

 psmouse_info(psmouse,
       "%s TrackPoint firmware: 0x%02x, buttons: %d/%d\n",
       psmouse->vendor, firmware_id,
       (button_info & 0xf0) >> 4, button_info & 0x0f);

 return 0;
}
