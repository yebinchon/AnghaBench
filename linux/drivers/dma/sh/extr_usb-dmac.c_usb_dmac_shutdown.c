
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_dmac {int dummy; } ;
struct platform_device {int dummy; } ;


 struct usb_dmac* platform_get_drvdata (struct platform_device*) ;
 int usb_dmac_stop (struct usb_dmac*) ;

__attribute__((used)) static void usb_dmac_shutdown(struct platform_device *pdev)
{
 struct usb_dmac *dmac = platform_get_drvdata(pdev);

 usb_dmac_stop(dmac);
}
