
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtk_cec {int clk; } ;


 int clk_disable_unprepare (int ) ;
 int mtk_cec_htplg_irq_disable (struct mtk_cec*) ;
 struct mtk_cec* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mtk_cec_remove(struct platform_device *pdev)
{
 struct mtk_cec *cec = platform_get_drvdata(pdev);

 mtk_cec_htplg_irq_disable(cec);
 clk_disable_unprepare(cec->clk);
 return 0;
}
