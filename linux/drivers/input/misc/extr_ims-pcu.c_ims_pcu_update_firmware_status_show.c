
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct ims_pcu {int update_firmware_status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct ims_pcu* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t
ims_pcu_update_firmware_status_show(struct device *dev,
        struct device_attribute *dattr,
        char *buf)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct ims_pcu *pcu = usb_get_intfdata(intf);

 return scnprintf(buf, PAGE_SIZE, "%d\n", pcu->update_firmware_status);
}
