
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface {int dummy; } ;
struct ims_pcu {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PCU_RESET ;
 int dev_info (int ,char*,...) ;
 int ims_pcu_execute_command (struct ims_pcu*,int ,int const*,int) ;
 int kstrtoint (char const*,int ,int*) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct ims_pcu* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t ims_pcu_reset_device(struct device *dev,
        struct device_attribute *dattr,
        const char *buf, size_t count)
{
 static const u8 reset_byte = 1;
 struct usb_interface *intf = to_usb_interface(dev);
 struct ims_pcu *pcu = usb_get_intfdata(intf);
 int value;
 int error;

 error = kstrtoint(buf, 0, &value);
 if (error)
  return error;

 if (value != 1)
  return -EINVAL;

 dev_info(pcu->dev, "Attempting to reset device\n");

 error = ims_pcu_execute_command(pcu, PCU_RESET, &reset_byte, 1);
 if (error) {
  dev_info(pcu->dev,
    "Failed to reset device, error: %d\n",
    error);
  return error;
 }

 return count;
}
