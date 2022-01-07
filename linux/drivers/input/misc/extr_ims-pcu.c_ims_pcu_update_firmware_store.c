
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ims_pcu {int cmd_mutex; scalar_t__ bootloader_mode; int dev; } ;
struct firmware {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int IMS_PCU_FIRMWARE_NAME ;
 int dev_err (int ,char*,int ,int) ;
 int ims_pcu_handle_firmware_update (struct ims_pcu*,struct firmware const*) ;
 int ims_pcu_switch_to_bootloader (struct ims_pcu*) ;
 int kstrtoint (char const*,int ,int*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int release_firmware (struct firmware const*) ;
 int request_ihex_firmware (struct firmware const**,int ,int ) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct ims_pcu* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t ims_pcu_update_firmware_store(struct device *dev,
          struct device_attribute *dattr,
          const char *buf, size_t count)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct ims_pcu *pcu = usb_get_intfdata(intf);
 const struct firmware *fw = ((void*)0);
 int value;
 int error;

 error = kstrtoint(buf, 0, &value);
 if (error)
  return error;

 if (value != 1)
  return -EINVAL;

 error = mutex_lock_interruptible(&pcu->cmd_mutex);
 if (error)
  return error;

 error = request_ihex_firmware(&fw, IMS_PCU_FIRMWARE_NAME, pcu->dev);
 if (error) {
  dev_err(pcu->dev, "Failed to request firmware %s, error: %d\n",
   IMS_PCU_FIRMWARE_NAME, error);
  goto out;
 }
 if (pcu->bootloader_mode)
  error = ims_pcu_handle_firmware_update(pcu, fw);
 else
  error = ims_pcu_switch_to_bootloader(pcu);

 release_firmware(fw);

out:
 mutex_unlock(&pcu->cmd_mutex);
 return error ?: count;
}
