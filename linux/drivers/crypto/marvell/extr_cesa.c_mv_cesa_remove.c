
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct mv_cesa_dev {TYPE_2__* engines; TYPE_1__* caps; } ;
struct TYPE_4__ {int clk; int zclk; } ;
struct TYPE_3__ {int nengines; } ;


 int clk_disable_unprepare (int ) ;
 int mv_cesa_put_sram (struct platform_device*,int) ;
 int mv_cesa_remove_algs (struct mv_cesa_dev*) ;
 struct mv_cesa_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mv_cesa_remove(struct platform_device *pdev)
{
 struct mv_cesa_dev *cesa = platform_get_drvdata(pdev);
 int i;

 mv_cesa_remove_algs(cesa);

 for (i = 0; i < cesa->caps->nengines; i++) {
  clk_disable_unprepare(cesa->engines[i].zclk);
  clk_disable_unprepare(cesa->engines[i].clk);
  mv_cesa_put_sram(pdev, i);
 }

 return 0;
}
