
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm97xx {int dummy; } ;
struct platform_device {int dummy; } ;


 struct wm97xx* platform_get_drvdata (struct platform_device*) ;
 int wm97xx_unregister_mach_ops (struct wm97xx*) ;

__attribute__((used)) static int zylonite_wm97xx_remove(struct platform_device *pdev)
{
 struct wm97xx *wm = platform_get_drvdata(pdev);

 wm97xx_unregister_mach_ops(wm);

 return 0;
}
