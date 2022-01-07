
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mouse_kind; int input; } ;







 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int REL_X ;
 int REL_Y ;
 TYPE_1__** adbhid ;
 int input_report_key (int ,int ,int) ;
 int input_report_rel (int ,int ,unsigned char) ;
 int input_sync (int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static void
adbhid_mouse_input(unsigned char *data, int nb, int autopoll)
{
 int id = (data[0] >> 4) & 0x0f;

 if (!adbhid[id]) {
  pr_err("ADB HID on ID %d not yet registered\n", id);
  return;
 }
 switch (adbhid[id]->mouse_kind)
 {
     case 128:
  data[1] = (data[1] & 0x7f) | ((data[1] & data[2]) & 0x80);
  data[2] = data[2] | 0x80;
  break;
     case 131:
  data[1] = (data[1] & 0x7f) | ((data[3] & 0x01) << 7);
  data[2] = (data[2] & 0x7f) | ((data[3] & 0x02) << 6);
  data[3] = (data[3] & 0x77) | ((data[3] & 0x04) << 5)
   | (data[3] & 0x08);
  break;
     case 129:
  data[1] = (data[1] & 0x7f) | (((data[3] & 0x04) << 5)
   & ((data[3] & 0x08) << 4));
  data[2] = (data[2] & 0x7f) | ((data[3] & 0x01) << 7);
  data[3] = (data[3] & 0x77) | ((data[3] & 0x02) << 6);
  break;
     case 130:
  data[1] = (data[1] & 0x7f) | ((data[3] & 0x01) << 7);
  data[2] = (data[2] & 0x7f) | ((data[3] & 0x02) << 6);
  data[3] = ((data[3] & 0x04) << 5);
  break;
            case 132:
  data[3] = (data[2] & 0x80) ? 0x80 : 0x00;
  data[2] |= 0x80;
  nb=4;
                break;
 }

 input_report_key(adbhid[id]->input, BTN_LEFT, !((data[1] >> 7) & 1));
 input_report_key(adbhid[id]->input, BTN_MIDDLE, !((data[2] >> 7) & 1));

 if (nb >= 4 && adbhid[id]->mouse_kind != 128)
  input_report_key(adbhid[id]->input, BTN_RIGHT, !((data[3] >> 7) & 1));

 input_report_rel(adbhid[id]->input, REL_X,
    ((data[2]&0x7f) < 64 ? (data[2]&0x7f) : (data[2]&0x7f)-128 ));
 input_report_rel(adbhid[id]->input, REL_Y,
    ((data[1]&0x7f) < 64 ? (data[1]&0x7f) : (data[1]&0x7f)-128 ));

 input_sync(adbhid[id]->input);
}
