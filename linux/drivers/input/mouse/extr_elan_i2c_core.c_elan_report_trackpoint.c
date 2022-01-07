
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct input_dev {int dummy; } ;
struct elan_tp_data {TYPE_1__* client; struct input_dev* tp_input; } ;
struct TYPE_2__ {int dev; } ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int ETP_REPORT_ID_OFFSET ;
 int REL_X ;
 int REL_Y ;
 int dev_warn_once (int *,char*) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void elan_report_trackpoint(struct elan_tp_data *data, u8 *report)
{
 struct input_dev *input = data->tp_input;
 u8 *packet = &report[ETP_REPORT_ID_OFFSET + 1];
 int x, y;

 if (!data->tp_input) {
  dev_warn_once(&data->client->dev,
         "received a trackpoint report while no trackpoint device has been created. Please report upstream.\n");
  return;
 }

 input_report_key(input, BTN_LEFT, packet[0] & 0x01);
 input_report_key(input, BTN_RIGHT, packet[0] & 0x02);
 input_report_key(input, BTN_MIDDLE, packet[0] & 0x04);

 if ((packet[3] & 0x0F) == 0x06) {
  x = packet[4] - (int)((packet[1] ^ 0x80) << 1);
  y = (int)((packet[2] ^ 0x80) << 1) - packet[5];

  input_report_rel(input, REL_X, x);
  input_report_rel(input, REL_Y, y);
 }

 input_sync(input);
}
