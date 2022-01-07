
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_netdev_data {int mode; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum netdev_led_attr { ____Placeholder_netdev_led_attr } netdev_led_attr ;


 int EINVAL ;



 int NETDEV_LED_LINK ;
 int NETDEV_LED_RX ;
 int NETDEV_LED_TX ;
 struct led_netdev_data* led_trigger_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 int test_bit (int,int *) ;

__attribute__((used)) static ssize_t netdev_led_attr_show(struct device *dev, char *buf,
 enum netdev_led_attr attr)
{
 struct led_netdev_data *trigger_data = led_trigger_get_drvdata(dev);
 int bit;

 switch (attr) {
 case 130:
  bit = NETDEV_LED_LINK;
  break;
 case 128:
  bit = NETDEV_LED_TX;
  break;
 case 129:
  bit = NETDEV_LED_RX;
  break;
 default:
  return -EINVAL;
 }

 return sprintf(buf, "%u\n", test_bit(bit, &trigger_data->mode));
}
