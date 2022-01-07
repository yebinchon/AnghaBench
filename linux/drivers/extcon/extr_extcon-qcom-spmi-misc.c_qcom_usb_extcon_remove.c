
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_usb_extcon_info {int wq_detcable; } ;
struct platform_device {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 struct qcom_usb_extcon_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int qcom_usb_extcon_remove(struct platform_device *pdev)
{
 struct qcom_usb_extcon_info *info = platform_get_drvdata(pdev);

 cancel_delayed_work_sync(&info->wq_detcable);

 return 0;
}
