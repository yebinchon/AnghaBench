
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct msm_gpu {int nr_clocks; int grp_clks; void* rbbmtimer_clk; void* core_clk; } ;


 int devm_clk_bulk_get_all (int *,int *) ;
 void* msm_clk_bulk_get_clock (int ,int,char*) ;

__attribute__((used)) static int get_clocks(struct platform_device *pdev, struct msm_gpu *gpu)
{
 int ret = devm_clk_bulk_get_all(&pdev->dev, &gpu->grp_clks);

 if (ret < 1) {
  gpu->nr_clocks = 0;
  return ret;
 }

 gpu->nr_clocks = ret;

 gpu->core_clk = msm_clk_bulk_get_clock(gpu->grp_clks,
  gpu->nr_clocks, "core");

 gpu->rbbmtimer_clk = msm_clk_bulk_get_clock(gpu->grp_clks,
  gpu->nr_clocks, "rbbmtimer");

 return 0;
}
