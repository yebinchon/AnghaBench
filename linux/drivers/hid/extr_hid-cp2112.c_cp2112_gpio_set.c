
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct cp2112_device {int* in_out_buffer; int lock; struct hid_device* hdev; } ;


 int CP2112_GPIO_SET ;
 int CP2112_GPIO_SET_LENGTH ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_SET_REPORT ;
 struct cp2112_device* gpiochip_get_data (struct gpio_chip*) ;
 int hid_err (struct hid_device*,char*,int) ;
 int hid_hw_raw_request (struct hid_device*,int,int*,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void cp2112_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct cp2112_device *dev = gpiochip_get_data(chip);
 struct hid_device *hdev = dev->hdev;
 u8 *buf = dev->in_out_buffer;
 int ret;

 mutex_lock(&dev->lock);

 buf[0] = CP2112_GPIO_SET;
 buf[1] = value ? 0xff : 0;
 buf[2] = 1 << offset;

 ret = hid_hw_raw_request(hdev, CP2112_GPIO_SET, buf,
     CP2112_GPIO_SET_LENGTH, HID_FEATURE_REPORT,
     HID_REQ_SET_REPORT);
 if (ret < 0)
  hid_err(hdev, "error setting GPIO values: %d\n", ret);

 mutex_unlock(&dev->lock);
}
