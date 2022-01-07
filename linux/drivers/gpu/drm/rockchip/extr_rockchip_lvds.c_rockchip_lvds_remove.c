
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_lvds {int pclk; } ;
struct platform_device {int dev; } ;


 int clk_unprepare (int ) ;
 int component_del (int *,int *) ;
 struct rockchip_lvds* dev_get_drvdata (int *) ;
 int rockchip_lvds_component_ops ;

__attribute__((used)) static int rockchip_lvds_remove(struct platform_device *pdev)
{
 struct rockchip_lvds *lvds = dev_get_drvdata(&pdev->dev);

 component_del(&pdev->dev, &rockchip_lvds_component_ops);
 clk_unprepare(lvds->pclk);

 return 0;
}
