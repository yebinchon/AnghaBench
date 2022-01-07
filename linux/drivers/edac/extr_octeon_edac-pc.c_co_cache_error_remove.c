
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct co_cache_error {int ed; int notifier; } ;


 int edac_device_del_device (int *) ;
 int edac_device_free_ctl_info (int ) ;
 struct co_cache_error* platform_get_drvdata (struct platform_device*) ;
 int unregister_co_cache_error_notifier (int *) ;

__attribute__((used)) static int co_cache_error_remove(struct platform_device *pdev)
{
 struct co_cache_error *p = platform_get_drvdata(pdev);

 unregister_co_cache_error_notifier(&p->notifier);
 edac_device_del_device(&pdev->dev);
 edac_device_free_ctl_info(p->ed);
 return 0;
}
