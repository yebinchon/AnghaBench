
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct led_classdev {TYPE_2__* dev; } ;
struct ipaq_micro_msg {int tx_len; int* tx_data; int id; } ;
struct ipaq_micro {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct TYPE_3__ {int parent; } ;


 int LED_GREEN ;
 int MSG_NOTIFY_LED ;
 struct ipaq_micro* dev_get_drvdata (int ) ;
 int ipaq_micro_tx_msg_sync (struct ipaq_micro*,struct ipaq_micro_msg*) ;

__attribute__((used)) static int micro_leds_brightness_set(struct led_classdev *led_cdev,
          enum led_brightness value)
{
 struct ipaq_micro *micro = dev_get_drvdata(led_cdev->dev->parent->parent);
 struct ipaq_micro_msg msg = {
  .id = MSG_NOTIFY_LED,
  .tx_len = 4,
 };

 msg.tx_data[0] = LED_GREEN;
 msg.tx_data[1] = 0;
 if (value) {
  msg.tx_data[2] = 0;
  msg.tx_data[3] = 1;
 } else {
  msg.tx_data[2] = 1;
  msg.tx_data[3] = 0;
 }
 return ipaq_micro_tx_msg_sync(micro, &msg);
}
