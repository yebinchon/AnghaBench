
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct led_classdev {TYPE_2__* dev; } ;
struct ipaq_micro_msg {int tx_len; void** tx_data; int id; } ;
struct ipaq_micro {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {int parent; } ;


 scalar_t__ DIV_ROUND_CLOSEST (unsigned long,int) ;
 int EINVAL ;
 unsigned long IPAQ_LED_MAX_DUTY ;
 void* LED_GREEN ;
 int MSG_NOTIFY_LED ;
 struct ipaq_micro* dev_get_drvdata (int ) ;
 int ipaq_micro_tx_msg_sync (struct ipaq_micro*,struct ipaq_micro_msg*) ;

__attribute__((used)) static int micro_leds_blink_set(struct led_classdev *led_cdev,
    unsigned long *delay_on,
    unsigned long *delay_off)
{
 struct ipaq_micro *micro = dev_get_drvdata(led_cdev->dev->parent->parent);
 struct ipaq_micro_msg msg = {
  .id = MSG_NOTIFY_LED,
  .tx_len = 4,
 };

 msg.tx_data[0] = LED_GREEN;
 if (*delay_on > IPAQ_LED_MAX_DUTY ||
     *delay_off > IPAQ_LED_MAX_DUTY)
  return -EINVAL;

 if (*delay_on == 0 && *delay_off == 0) {
  *delay_on = 100;
  *delay_off = 100;
 }

 msg.tx_data[1] = 0;
 if (*delay_on >= IPAQ_LED_MAX_DUTY)
  msg.tx_data[2] = 0;
 else
  msg.tx_data[2] = (u8) DIV_ROUND_CLOSEST(*delay_on, 100);
 if (*delay_off >= IPAQ_LED_MAX_DUTY)
  msg.tx_data[3] = 0;
 else
  msg.tx_data[3] = (u8) DIV_ROUND_CLOSEST(*delay_off, 100);
 return ipaq_micro_tx_msg_sync(micro, &msg);
}
