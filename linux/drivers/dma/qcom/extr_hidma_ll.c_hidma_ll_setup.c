
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hidma_lldev {int nr_tres; int tre_ring_size; int msi_support; scalar_t__ evca; int evre_dma; scalar_t__ trca; int tre_dma; scalar_t__ tre_write_offset; scalar_t__ evre_processed_off; scalar_t__ tre_processed_off; int pending_tre_count; } ;


 scalar_t__ HIDMA_EVCA_IRQ_CLR_REG ;
 scalar_t__ HIDMA_EVCA_IRQ_EN_REG ;
 scalar_t__ HIDMA_EVCA_IRQ_STAT_REG ;
 scalar_t__ HIDMA_EVCA_RING_HIGH_REG ;
 scalar_t__ HIDMA_EVCA_RING_LEN_REG ;
 scalar_t__ HIDMA_EVCA_RING_LOW_REG ;
 int HIDMA_EVRE_SIZE ;
 scalar_t__ HIDMA_TRCA_RING_HIGH_REG ;
 scalar_t__ HIDMA_TRCA_RING_LEN_REG ;
 scalar_t__ HIDMA_TRCA_RING_LOW_REG ;
 int atomic_set (int *,int ) ;
 int hidma_ll_enable (struct hidma_lldev*) ;
 int hidma_ll_reset (struct hidma_lldev*) ;
 int hidma_ll_setup_irq (struct hidma_lldev*,int ) ;
 int lower_32_bits (int ) ;
 int readl (scalar_t__) ;
 int upper_32_bits (int ) ;
 int writel (int,scalar_t__) ;

int hidma_ll_setup(struct hidma_lldev *lldev)
{
 int rc;
 u64 addr;
 u32 val;
 u32 nr_tres = lldev->nr_tres;

 atomic_set(&lldev->pending_tre_count, 0);
 lldev->tre_processed_off = 0;
 lldev->evre_processed_off = 0;
 lldev->tre_write_offset = 0;


 writel(0, lldev->evca + HIDMA_EVCA_IRQ_EN_REG);


 val = readl(lldev->evca + HIDMA_EVCA_IRQ_STAT_REG);
 writel(val, lldev->evca + HIDMA_EVCA_IRQ_CLR_REG);

 rc = hidma_ll_reset(lldev);
 if (rc)
  return rc;





 val = readl(lldev->evca + HIDMA_EVCA_IRQ_STAT_REG);
 writel(val, lldev->evca + HIDMA_EVCA_IRQ_CLR_REG);


 writel(0, lldev->evca + HIDMA_EVCA_IRQ_EN_REG);

 addr = lldev->tre_dma;
 writel(lower_32_bits(addr), lldev->trca + HIDMA_TRCA_RING_LOW_REG);
 writel(upper_32_bits(addr), lldev->trca + HIDMA_TRCA_RING_HIGH_REG);
 writel(lldev->tre_ring_size, lldev->trca + HIDMA_TRCA_RING_LEN_REG);

 addr = lldev->evre_dma;
 writel(lower_32_bits(addr), lldev->evca + HIDMA_EVCA_RING_LOW_REG);
 writel(upper_32_bits(addr), lldev->evca + HIDMA_EVCA_RING_HIGH_REG);
 writel(HIDMA_EVRE_SIZE * nr_tres,
   lldev->evca + HIDMA_EVCA_RING_LEN_REG);


 hidma_ll_setup_irq(lldev, lldev->msi_support);

 rc = hidma_ll_enable(lldev);
 if (rc)
  return rc;

 return rc;
}
