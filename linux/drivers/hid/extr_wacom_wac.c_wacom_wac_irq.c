
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct wacom_wac {scalar_t__ pad_input; scalar_t__ touch_input; scalar_t__ pen_input; int * data; TYPE_1__ features; } ;
 size_t WACOM_PKGLEN_BBTOUCH3 ;
 int WACOM_REPORT_DEVICE_LIST ;
 int WACOM_REPORT_USB ;

 int input_sync (scalar_t__) ;
 int wacom_24hdt_irq (struct wacom_wac*) ;
 int wacom_bamboo_pad_irq (struct wacom_wac*,size_t) ;
 int wacom_bpt3_touch (struct wacom_wac*) ;
 int wacom_bpt_irq (struct wacom_wac*,size_t) ;
 int wacom_dtu_irq (struct wacom_wac*) ;
 int wacom_dtus_irq (struct wacom_wac*) ;
 int wacom_graphire_irq (struct wacom_wac*) ;
 int wacom_intuos_bt_irq (struct wacom_wac*,size_t) ;
 int wacom_intuos_irq (struct wacom_wac*) ;
 int wacom_intuos_pro2_bt_irq (struct wacom_wac*,size_t) ;
 int wacom_penpartner_irq (struct wacom_wac*) ;
 int wacom_pl_irq (struct wacom_wac*) ;
 int wacom_ptu_irq (struct wacom_wac*) ;
 int wacom_remote_irq (struct wacom_wac*,size_t) ;
 int wacom_remote_status_irq (struct wacom_wac*,size_t) ;
 int wacom_status_irq (struct wacom_wac*,size_t) ;
 int wacom_tpc_irq (struct wacom_wac*,size_t) ;
 int wacom_wireless_irq (struct wacom_wac*,size_t) ;

void wacom_wac_irq(struct wacom_wac *wacom_wac, size_t len)
{
 bool sync;

 switch (wacom_wac->features.type) {
 case 145:
  sync = wacom_penpartner_irq(wacom_wac);
  break;

 case 144:
  sync = wacom_pl_irq(wacom_wac);
  break;

 case 130:
 case 169:
 case 168:
 case 129:
  sync = wacom_graphire_irq(wacom_wac);
  break;

 case 143:
  sync = wacom_ptu_irq(wacom_wac);
  break;

 case 172:
  sync = wacom_dtu_irq(wacom_wac);
  break;

 case 171:
 case 170:
  sync = wacom_dtus_irq(wacom_wac);
  break;

 case 167:
 case 164:
 case 166:
 case 165:
 case 161:
 case 163:
 case 162:
 case 176:
 case 131:
 case 138:
 case 137:
 case 136:
 case 135:
 case 133:
 case 173:
 case 174:
 case 175:
  sync = wacom_intuos_irq(wacom_wac);
  break;

 case 160:
  sync = wacom_intuos_bt_irq(wacom_wac, len);
  break;

 case 134:
 case 132:
  sync = wacom_24hdt_irq(wacom_wac);
  break;

 case 157:
 case 159:
 case 158:
 case 149:
 case 150:
 case 151:
  if (len == WACOM_PKGLEN_BBTOUCH3)
   sync = wacom_bpt3_touch(wacom_wac);
  else if (wacom_wac->data[0] == WACOM_REPORT_USB)
   sync = wacom_status_irq(wacom_wac, len);
  else
   sync = wacom_intuos_irq(wacom_wac);
  break;

 case 152:
 case 153:
 case 154:
  sync = wacom_intuos_pro2_bt_irq(wacom_wac, len);
  break;

 case 141:
 case 139:
 case 140:
 case 148:
 case 147:
 case 146:
  sync = wacom_tpc_irq(wacom_wac, len);
  break;

 case 178:
 case 179:
 case 177:
 case 156:
 case 155:
  if (wacom_wac->data[0] == WACOM_REPORT_USB)
   sync = wacom_status_irq(wacom_wac, len);
  else
   sync = wacom_bpt_irq(wacom_wac, len);
  break;

 case 180:
  sync = wacom_bamboo_pad_irq(wacom_wac, len);
  break;

 case 128:
  sync = wacom_wireless_irq(wacom_wac, len);
  break;

 case 142:
  sync = 0;
  if (wacom_wac->data[0] == WACOM_REPORT_DEVICE_LIST)
   wacom_remote_status_irq(wacom_wac, len);
  else
   sync = wacom_remote_irq(wacom_wac, len);
  break;

 default:
  sync = 0;
  break;
 }

 if (sync) {
  if (wacom_wac->pen_input)
   input_sync(wacom_wac->pen_input);
  if (wacom_wac->touch_input)
   input_sync(wacom_wac->touch_input);
  if (wacom_wac->pad_input)
   input_sync(wacom_wac->pad_input);
 }
}
