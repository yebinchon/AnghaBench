
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hidma_lldev {scalar_t__ evca; scalar_t__ evch_state; scalar_t__ trch_state; scalar_t__ trca; } ;


 int HIDMA_CH_CONTROL_MASK ;
 scalar_t__ HIDMA_CH_STATE (int) ;
 int HIDMA_CH_SUSPEND ;
 scalar_t__ HIDMA_CH_SUSPENDED ;
 scalar_t__ HIDMA_EVCA_CTRLSTS_REG ;
 scalar_t__ HIDMA_EVCA_IRQ_EN_REG ;
 scalar_t__ HIDMA_TRCA_CTRLSTS_REG ;
 int hidma_ll_isenabled (struct hidma_lldev*) ;
 int readl (scalar_t__) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

int hidma_ll_disable(struct hidma_lldev *lldev)
{
 u32 val;
 int ret;


 if (!hidma_ll_isenabled(lldev))
  return 0;

 val = readl(lldev->trca + HIDMA_TRCA_CTRLSTS_REG);
 val &= ~(HIDMA_CH_CONTROL_MASK << 16);
 val |= HIDMA_CH_SUSPEND << 16;
 writel(val, lldev->trca + HIDMA_TRCA_CTRLSTS_REG);





 ret = readl_poll_timeout(lldev->trca + HIDMA_TRCA_CTRLSTS_REG, val,
     HIDMA_CH_STATE(val) == HIDMA_CH_SUSPENDED,
     1000, 10000);
 if (ret)
  return ret;

 val = readl(lldev->evca + HIDMA_EVCA_CTRLSTS_REG);
 val &= ~(HIDMA_CH_CONTROL_MASK << 16);
 val |= HIDMA_CH_SUSPEND << 16;
 writel(val, lldev->evca + HIDMA_EVCA_CTRLSTS_REG);





 ret = readl_poll_timeout(lldev->evca + HIDMA_EVCA_CTRLSTS_REG, val,
     HIDMA_CH_STATE(val) == HIDMA_CH_SUSPENDED,
     1000, 10000);
 if (ret)
  return ret;

 lldev->trch_state = HIDMA_CH_SUSPENDED;
 lldev->evch_state = HIDMA_CH_SUSPENDED;


 writel(0, lldev->evca + HIDMA_EVCA_IRQ_EN_REG);
 return 0;
}
