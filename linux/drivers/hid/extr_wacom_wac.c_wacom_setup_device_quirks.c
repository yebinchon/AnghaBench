
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wacom_features {int type; int device_type; int x_max; int y_max; scalar_t__ pktlen; int x_fuzz; int y_fuzz; int quirks; scalar_t__ touch_max; } ;
struct wacom_wac {TYPE_2__* pen_input; struct wacom_features features; } ;
struct wacom {TYPE_1__* hdev; struct wacom_wac wacom_wac; } ;
struct TYPE_4__ {int evbit; int mscbit; int absbit; int keybit; } ;
struct TYPE_3__ {scalar_t__ bus; int product; } ;


 int ABS_DISTANCE ;
 int ABS_MISC ;
 int ABS_TILT_X ;
 int ABS_TILT_Y ;
 int ABS_WHEEL ;
 int ABS_Z ;
 int BAMBOO_PAD ;
 int BAMBOO_PEN ;
 int BAMBOO_PT ;
 int BAMBOO_TOUCH ;
 int BTN_TOOL_AIRBRUSH ;
 int BTN_TOOL_BRUSH ;
 int BTN_TOOL_PENCIL ;
 scalar_t__ BUS_BLUETOOTH ;







 int EV_MSC ;
 int GRAPHIRE_BT ;
 int INTUOS3S ;
 int INTUOS5S ;
 int INTUOSHT ;
 int INTUOSHT2 ;
 int INTUOSHT3_BT ;
 int INTUOSP2S_BT ;
 int INTUOSP2_BT ;
 int INTUOSPL ;
 int MSC_SERIAL ;




 int REMOTE ;
 int WACOM_DEVICETYPE_DIRECT ;
 int WACOM_DEVICETYPE_PAD ;
 int WACOM_DEVICETYPE_PEN ;
 int WACOM_DEVICETYPE_TOUCH ;
 int WACOM_DEVICETYPE_WL_MONITOR ;
 int WACOM_G4 ;
 int WACOM_MO ;
 scalar_t__ WACOM_PKGLEN_BBTOUCH ;
 scalar_t__ WACOM_PKGLEN_BBTOUCH3 ;
 int WACOM_QUIRK_BATTERY ;
 int WACOM_QUIRK_BBTOUCH_LOWRES ;
 int WACOM_QUIRK_TOOLSERIAL ;
 int WIRELESS ;
 int __clear_bit (int ,int ) ;

void wacom_setup_device_quirks(struct wacom *wacom)
{
 struct wacom_wac *wacom_wac = &wacom->wacom_wac;
 struct wacom_features *features = &wacom->wacom_wac.features;


 if (features->type == GRAPHIRE_BT || features->type == WACOM_G4 ||
     features->type == 144 ||
     (features->type >= INTUOS3S && features->type <= WACOM_MO)) {
  if (features->device_type & WACOM_DEVICETYPE_PEN)
   features->device_type |= WACOM_DEVICETYPE_PAD;
 }


 if (features->device_type & WACOM_DEVICETYPE_TOUCH && !features->x_max) {
  features->x_max = 1023;
  features->y_max = 1023;
 }







 if ((features->type >= INTUOS5S && features->type <= INTUOSPL) ||
  (features->type >= INTUOSHT && features->type <= BAMBOO_PT)) {
  if (features->pktlen == WACOM_PKGLEN_BBTOUCH3) {
   if (features->touch_max)
    features->device_type |= WACOM_DEVICETYPE_TOUCH;
   if (features->type >= INTUOSHT && features->type <= BAMBOO_PT)
    features->device_type |= WACOM_DEVICETYPE_PAD;

   if (features->type == INTUOSHT2) {
    features->x_max = features->x_max / 10;
    features->y_max = features->y_max / 10;
   }
   else {
    features->x_max = 4096;
    features->y_max = 4096;
   }
  }
  else if (features->pktlen == WACOM_PKGLEN_BBTOUCH) {
   features->device_type |= WACOM_DEVICETYPE_PAD;
  }
 }
 if (features->type == BAMBOO_PEN &&
     features->pktlen == WACOM_PKGLEN_BBTOUCH3)
  features->device_type |= WACOM_DEVICETYPE_PAD;
 if (features->type == BAMBOO_PAD)
  features->device_type = WACOM_DEVICETYPE_TOUCH;

 if (features->type == REMOTE)
  features->device_type = WACOM_DEVICETYPE_PAD;

 if (features->type == INTUOSP2_BT ||
     features->type == INTUOSP2S_BT) {
  features->device_type |= WACOM_DEVICETYPE_PEN |
      WACOM_DEVICETYPE_PAD |
      WACOM_DEVICETYPE_TOUCH;
  features->quirks |= WACOM_QUIRK_BATTERY;
 }

 if (features->type == INTUOSHT3_BT) {
  features->device_type |= WACOM_DEVICETYPE_PEN |
      WACOM_DEVICETYPE_PAD;
  features->quirks |= WACOM_QUIRK_BATTERY;
 }

 switch (features->type) {
 case 139:
 case 145:
 case 144:
 case 143:
 case 134:
 case 133:
 case 146:
 case 132:
 case 130:
 case 147:
 case 148:
 case 149:
 case 128:
 case 135:
 case 131:
 case 129:
 case 138:
 case 136:
 case 137:
 case 142:
 case 141:
 case 140:
  features->device_type |= WACOM_DEVICETYPE_DIRECT;
  break;
 }

 if (wacom->hdev->bus == BUS_BLUETOOTH)
  features->quirks |= WACOM_QUIRK_BATTERY;


 if ((features->type == BAMBOO_PT || features->type == BAMBOO_TOUCH) &&
     features->pktlen == WACOM_PKGLEN_BBTOUCH) {
  features->x_max <<= 5;
  features->y_max <<= 5;
  features->x_fuzz <<= 5;
  features->y_fuzz <<= 5;
  features->quirks |= WACOM_QUIRK_BBTOUCH_LOWRES;
 }

 if (features->type == WIRELESS) {
  if (features->device_type == WACOM_DEVICETYPE_WL_MONITOR) {
   features->quirks |= WACOM_QUIRK_BATTERY;
  }
 }

 if (features->type == REMOTE)
  features->device_type |= WACOM_DEVICETYPE_WL_MONITOR;




 if (wacom->hdev->product == 0x382 || wacom->hdev->product == 0x37d) {
  features->quirks &= ~WACOM_QUIRK_TOOLSERIAL;
  __clear_bit(BTN_TOOL_BRUSH, wacom_wac->pen_input->keybit);
  __clear_bit(BTN_TOOL_PENCIL, wacom_wac->pen_input->keybit);
  __clear_bit(BTN_TOOL_AIRBRUSH, wacom_wac->pen_input->keybit);
  __clear_bit(ABS_Z, wacom_wac->pen_input->absbit);
  __clear_bit(ABS_DISTANCE, wacom_wac->pen_input->absbit);
  __clear_bit(ABS_TILT_X, wacom_wac->pen_input->absbit);
  __clear_bit(ABS_TILT_Y, wacom_wac->pen_input->absbit);
  __clear_bit(ABS_WHEEL, wacom_wac->pen_input->absbit);
  __clear_bit(ABS_MISC, wacom_wac->pen_input->absbit);
  __clear_bit(MSC_SERIAL, wacom_wac->pen_input->mscbit);
  __clear_bit(EV_MSC, wacom_wac->pen_input->evbit);
 }
}
