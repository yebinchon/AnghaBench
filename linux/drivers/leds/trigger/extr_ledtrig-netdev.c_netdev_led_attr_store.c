
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_netdev_data {int mode; int work; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum netdev_led_attr { ____Placeholder_netdev_led_attr } netdev_led_attr ;


 int EINVAL ;



 int NETDEV_LED_LINK ;
 int NETDEV_LED_RX ;
 int NETDEV_LED_TX ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int,int *) ;
 int kstrtoul (char const*,int ,unsigned long*) ;
 struct led_netdev_data* led_trigger_get_drvdata (struct device*) ;
 int set_baseline_state (struct led_netdev_data*) ;
 int set_bit (int,int *) ;

__attribute__((used)) static ssize_t netdev_led_attr_store(struct device *dev, const char *buf,
 size_t size, enum netdev_led_attr attr)
{
 struct led_netdev_data *trigger_data = led_trigger_get_drvdata(dev);
 unsigned long state;
 int ret;
 int bit;

 ret = kstrtoul(buf, 0, &state);
 if (ret)
  return ret;

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

 cancel_delayed_work_sync(&trigger_data->work);

 if (state)
  set_bit(bit, &trigger_data->mode);
 else
  clear_bit(bit, &trigger_data->mode);

 set_baseline_state(trigger_data);

 return size;
}
