
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct palmas_usb {int wq_detectid; } ;


 int cancel_delayed_work_sync (int *) ;
 struct palmas_usb* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int palmas_usb_remove(struct platform_device *pdev)
{
 struct palmas_usb *palmas_usb = platform_get_drvdata(pdev);

 cancel_delayed_work_sync(&palmas_usb->wq_detectid);

 return 0;
}
