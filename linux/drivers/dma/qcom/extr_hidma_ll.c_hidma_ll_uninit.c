
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hidma_tre {int dummy; } ;
struct hidma_lldev {int nr_tres; scalar_t__ evca; scalar_t__ tre_write_offset; int pending_tre_count; int * trepool; int task; scalar_t__ initialized; } ;


 int ENODEV ;
 scalar_t__ HIDMA_EVCA_IRQ_CLR_REG ;
 scalar_t__ HIDMA_EVCA_IRQ_EN_REG ;
 scalar_t__ HIDMA_EVCA_IRQ_STAT_REG ;
 int atomic_set (int *,int ) ;
 int hidma_ll_reset (struct hidma_lldev*) ;
 int memset (int *,int ,int) ;
 int readl (scalar_t__) ;
 int tasklet_kill (int *) ;
 int writel (int,scalar_t__) ;

int hidma_ll_uninit(struct hidma_lldev *lldev)
{
 u32 required_bytes;
 int rc = 0;
 u32 val;

 if (!lldev)
  return -ENODEV;

 if (!lldev->initialized)
  return 0;

 lldev->initialized = 0;

 required_bytes = sizeof(struct hidma_tre) * lldev->nr_tres;
 tasklet_kill(&lldev->task);
 memset(lldev->trepool, 0, required_bytes);
 lldev->trepool = ((void*)0);
 atomic_set(&lldev->pending_tre_count, 0);
 lldev->tre_write_offset = 0;

 rc = hidma_ll_reset(lldev);





 val = readl(lldev->evca + HIDMA_EVCA_IRQ_STAT_REG);
 writel(val, lldev->evca + HIDMA_EVCA_IRQ_CLR_REG);
 writel(0, lldev->evca + HIDMA_EVCA_IRQ_EN_REG);
 return rc;
}
