
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_dsi {int dev; int completed; } ;


 int dev_err (int ,char*) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void exynos_dsi_wait_for_reset(struct exynos_dsi *dsi)
{
 if (wait_for_completion_timeout(&dsi->completed, msecs_to_jiffies(300)))
  return;

 dev_err(dsi->dev, "timeout waiting for reset\n");
}
