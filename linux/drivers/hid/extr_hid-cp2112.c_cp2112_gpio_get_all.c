
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hid_device {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct cp2112_device {int* in_out_buffer; int lock; struct hid_device* hdev; } ;


 int CP2112_GPIO_GET ;
 int CP2112_GPIO_GET_LENGTH ;
 int EIO ;
 int HID_FEATURE_REPORT ;
 int HID_REQ_GET_REPORT ;
 struct cp2112_device* gpiochip_get_data (struct gpio_chip*) ;
 int hid_err (struct hid_device*,char*,int) ;
 int hid_hw_raw_request (struct hid_device*,int ,int*,int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cp2112_gpio_get_all(struct gpio_chip *chip)
{
 struct cp2112_device *dev = gpiochip_get_data(chip);
 struct hid_device *hdev = dev->hdev;
 u8 *buf = dev->in_out_buffer;
 int ret;

 mutex_lock(&dev->lock);

 ret = hid_hw_raw_request(hdev, CP2112_GPIO_GET, buf,
     CP2112_GPIO_GET_LENGTH, HID_FEATURE_REPORT,
     HID_REQ_GET_REPORT);
 if (ret != CP2112_GPIO_GET_LENGTH) {
  hid_err(hdev, "error requesting GPIO values: %d\n", ret);
  ret = ret < 0 ? ret : -EIO;
  goto exit;
 }

 ret = buf[1];

exit:
 mutex_unlock(&dev->lock);

 return ret;
}
