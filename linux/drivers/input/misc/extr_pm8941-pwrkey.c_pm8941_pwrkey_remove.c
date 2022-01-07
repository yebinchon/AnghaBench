
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8941_pwrkey {int reboot_notifier; } ;
struct platform_device {int dummy; } ;


 struct pm8941_pwrkey* platform_get_drvdata (struct platform_device*) ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static int pm8941_pwrkey_remove(struct platform_device *pdev)
{
 struct pm8941_pwrkey *pwrkey = platform_get_drvdata(pdev);

 unregister_reboot_notifier(&pwrkey->reboot_notifier);

 return 0;
}
