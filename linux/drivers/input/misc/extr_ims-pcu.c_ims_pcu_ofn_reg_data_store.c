
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface {int dummy; } ;
struct ims_pcu {int cmd_mutex; int ofn_reg_addr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ims_pcu_write_ofn_config (struct ims_pcu*,int ,int ) ;
 int kstrtou8 (char const*,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct ims_pcu* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t ims_pcu_ofn_reg_data_store(struct device *dev,
       struct device_attribute *dattr,
       const char *buf, size_t count)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct ims_pcu *pcu = usb_get_intfdata(intf);
 int error;
 u8 value;

 error = kstrtou8(buf, 0, &value);
 if (error)
  return error;

 mutex_lock(&pcu->cmd_mutex);
 error = ims_pcu_write_ofn_config(pcu, pcu->ofn_reg_addr, value);
 mutex_unlock(&pcu->cmd_mutex);

 return error ?: count;
}
