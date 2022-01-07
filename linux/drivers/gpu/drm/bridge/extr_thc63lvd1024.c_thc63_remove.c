
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thc63_dev {int bridge; } ;
struct platform_device {int dummy; } ;


 int drm_bridge_remove (int *) ;
 struct thc63_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int thc63_remove(struct platform_device *pdev)
{
 struct thc63_dev *thc63 = platform_get_drvdata(pdev);

 drm_bridge_remove(&thc63->bridge);

 return 0;
}
