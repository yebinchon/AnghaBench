
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct host1x {int group; scalar_t__ domain; int iova; int clk; int rst; } ;


 int clk_disable_unprepare (int ) ;
 int host1x_intr_deinit (struct host1x*) ;
 int host1x_syncpt_deinit (struct host1x*) ;
 int host1x_unregister (struct host1x*) ;
 int iommu_detach_group (scalar_t__,int ) ;
 int iommu_domain_free (scalar_t__) ;
 int iommu_group_put (int ) ;
 int iova_cache_put () ;
 struct host1x* platform_get_drvdata (struct platform_device*) ;
 int put_iova_domain (int *) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int host1x_remove(struct platform_device *pdev)
{
 struct host1x *host = platform_get_drvdata(pdev);

 host1x_unregister(host);
 host1x_intr_deinit(host);
 host1x_syncpt_deinit(host);
 reset_control_assert(host->rst);
 clk_disable_unprepare(host->clk);

 if (host->domain) {
  put_iova_domain(&host->iova);
  iommu_detach_group(host->domain, host->group);
  iommu_domain_free(host->domain);
  iova_cache_put();
  iommu_group_put(host->group);
 }

 return 0;
}
