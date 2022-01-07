
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct input_dev {int absbit; } ;
struct iforce {TYPE_1__* core_effects; struct input_dev* dev; } ;
typedef int __s8 ;
typedef int __s16 ;
struct TYPE_2__ {int flags; } ;


 int ABS_BRAKE ;
 int ABS_GAS ;
 int ABS_RUDDER ;
 int ABS_THROTTLE ;
 int ABS_WHEEL ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_DEAD ;
 int FF_CORE_IS_PLAYED ;
 int FF_STATUS_PLAYING ;
 int FF_STATUS_STOPPED ;
 int get_unaligned_le16 (int*) ;
 int iforce_report_hats_buttons (struct iforce*,int*) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_ff_status (struct input_dev*,int,int ) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int mark_core_as_ready (struct iforce*,int ) ;
 int test_and_clear_bit (int ,int ) ;
 int test_and_set_bit (int ,int ) ;
 int test_bit (int ,int ) ;

void iforce_process_packet(struct iforce *iforce,
      u8 packet_id, u8 *data, size_t len)
{
 struct input_dev *dev = iforce->dev;
 int i, j;

 switch (packet_id) {

 case 0x01:
  input_report_abs(dev, ABS_X,
     (__s16) get_unaligned_le16(data));
  input_report_abs(dev, ABS_Y,
     (__s16) get_unaligned_le16(data + 2));
  input_report_abs(dev, ABS_THROTTLE, 255 - data[4]);

  if (len >= 8 && test_bit(ABS_RUDDER ,dev->absbit))
   input_report_abs(dev, ABS_RUDDER, (__s8)data[7]);

  iforce_report_hats_buttons(iforce, data);

  input_sync(dev);
  break;

 case 0x03:
  input_report_abs(dev, ABS_WHEEL,
     (__s16) get_unaligned_le16(data));
  input_report_abs(dev, ABS_GAS, 255 - data[2]);
  input_report_abs(dev, ABS_BRAKE, 255 - data[3]);

  iforce_report_hats_buttons(iforce, data);

  input_sync(dev);
  break;

 case 0x02:
  input_report_key(dev, BTN_DEAD, data[0] & 0x02);
  input_sync(dev);


  i = data[1] & 0x7f;
  if (data[1] & 0x80) {
   if (!test_and_set_bit(FF_CORE_IS_PLAYED, iforce->core_effects[i].flags)) {

    input_report_ff_status(dev, i, FF_STATUS_PLAYING);
   }
  } else if (test_and_clear_bit(FF_CORE_IS_PLAYED, iforce->core_effects[i].flags)) {

   input_report_ff_status(dev, i, FF_STATUS_STOPPED);
  }

  for (j = 3; j < len; j += 2)
   mark_core_as_ready(iforce, get_unaligned_le16(data + j));

  break;
 }
}
