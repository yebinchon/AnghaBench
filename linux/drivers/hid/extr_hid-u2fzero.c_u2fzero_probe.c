
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct u2fzero_device {int present; int lock; struct hid_device* hdev; int * buf_in; int * buf_out; } ;
struct u2f_hid_report {int dummy; } ;
struct u2f_hid_msg {int dummy; } ;
struct hidraw {unsigned int minor; } ;
struct hid_device_id {int dummy; } ;
struct hid_device {scalar_t__ hidraw; int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_CONNECT_HIDRAW ;
 void* devm_kmalloc (int *,int,int ) ;
 struct u2fzero_device* devm_kzalloc (int *,int,int ) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_hw_stop (struct hid_device*) ;
 int hid_info (struct hid_device*,char*) ;
 int hid_is_using_ll_driver (struct hid_device*,int *) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct u2fzero_device*) ;
 int mutex_init (int *) ;
 int u2fzero_fill_in_urb (struct u2fzero_device*) ;
 int u2fzero_init_hwrng (struct u2fzero_device*,unsigned int) ;
 int u2fzero_init_led (struct u2fzero_device*,unsigned int) ;
 int usb_hid_driver ;

__attribute__((used)) static int u2fzero_probe(struct hid_device *hdev,
    const struct hid_device_id *id)
{
 struct u2fzero_device *dev;
 unsigned int minor;
 int ret;

 if (!hid_is_using_ll_driver(hdev, &usb_hid_driver))
  return -EINVAL;

 dev = devm_kzalloc(&hdev->dev, sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0))
  return -ENOMEM;

 dev->buf_out = devm_kmalloc(&hdev->dev,
  sizeof(struct u2f_hid_report), GFP_KERNEL);
 if (dev->buf_out == ((void*)0))
  return -ENOMEM;

 dev->buf_in = devm_kmalloc(&hdev->dev,
  sizeof(struct u2f_hid_msg), GFP_KERNEL);
 if (dev->buf_in == ((void*)0))
  return -ENOMEM;

 ret = hid_parse(hdev);
 if (ret)
  return ret;

 dev->hdev = hdev;
 hid_set_drvdata(hdev, dev);
 mutex_init(&dev->lock);

 ret = hid_hw_start(hdev, HID_CONNECT_HIDRAW);
 if (ret)
  return ret;

 u2fzero_fill_in_urb(dev);

 dev->present = 1;

 minor = ((struct hidraw *) hdev->hidraw)->minor;

 ret = u2fzero_init_led(dev, minor);
 if (ret) {
  hid_hw_stop(hdev);
  return ret;
 }

 hid_info(hdev, "U2F Zero LED initialised\n");

 ret = u2fzero_init_hwrng(dev, minor);
 if (ret) {
  hid_hw_stop(hdev);
  return ret;
 }

 hid_info(hdev, "U2F Zero RNG initialised\n");

 return 0;
}
