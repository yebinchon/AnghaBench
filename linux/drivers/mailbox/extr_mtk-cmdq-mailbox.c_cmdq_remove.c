
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cmdq {int clock; } ;


 int clk_unprepare (int ) ;
 struct cmdq* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cmdq_remove(struct platform_device *pdev)
{
 struct cmdq *cmdq = platform_get_drvdata(pdev);

 clk_unprepare(cmdq->clock);

 return 0;
}
