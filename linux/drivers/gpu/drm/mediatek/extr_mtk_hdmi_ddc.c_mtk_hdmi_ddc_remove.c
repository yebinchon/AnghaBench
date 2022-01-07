
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtk_hdmi_ddc {int clk; int adap; } ;


 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct mtk_hdmi_ddc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_hdmi_ddc_remove(struct platform_device *pdev)
{
 struct mtk_hdmi_ddc *ddc = platform_get_drvdata(pdev);

 i2c_del_adapter(&ddc->adap);
 clk_disable_unprepare(ddc->clk);

 return 0;
}
