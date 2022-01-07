
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_extcon_info {int wq_detcable; } ;
struct platform_device {int dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int device_init_wakeup (int *,int) ;
 struct usb_extcon_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int usb_extcon_remove(struct platform_device *pdev)
{
 struct usb_extcon_info *info = platform_get_drvdata(pdev);

 cancel_delayed_work_sync(&info->wq_detcable);
 device_init_wakeup(&pdev->dev, 0);

 return 0;
}
