
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_lvds {int bridge; } ;
struct platform_device {int dummy; } ;


 int drm_bridge_remove (int *) ;
 struct rcar_lvds* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int rcar_lvds_remove(struct platform_device *pdev)
{
 struct rcar_lvds *lvds = platform_get_drvdata(pdev);

 drm_bridge_remove(&lvds->bridge);

 return 0;
}
