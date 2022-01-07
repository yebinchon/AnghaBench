
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hidma_lldev {scalar_t__ evca; void* evch_state; void* trch_state; int dev; scalar_t__ trca; } ;


 int ENABLE_IRQS ;
 int HIDMA_CH_CONTROL_MASK ;
 int HIDMA_CH_ENABLE ;
 void* HIDMA_CH_ENABLED ;
 int HIDMA_CH_STATE (int) ;
 scalar_t__ HIDMA_EVCA_CTRLSTS_REG ;
 scalar_t__ HIDMA_EVCA_IRQ_EN_REG ;
 scalar_t__ HIDMA_TRCA_CTRLSTS_REG ;
 int dev_err (int ,char*) ;
 int hidma_is_chan_enabled (int ) ;
 int readl (scalar_t__) ;
 int readl_poll_timeout (scalar_t__,int,int ,int,int) ;
 int writel (int,scalar_t__) ;

int hidma_ll_enable(struct hidma_lldev *lldev)
{
 u32 val;
 int ret;

 val = readl(lldev->evca + HIDMA_EVCA_CTRLSTS_REG);
 val &= ~(HIDMA_CH_CONTROL_MASK << 16);
 val |= HIDMA_CH_ENABLE << 16;
 writel(val, lldev->evca + HIDMA_EVCA_CTRLSTS_REG);

 ret = readl_poll_timeout(lldev->evca + HIDMA_EVCA_CTRLSTS_REG, val,
     hidma_is_chan_enabled(HIDMA_CH_STATE(val)),
     1000, 10000);
 if (ret) {
  dev_err(lldev->dev, "event channel did not get enabled\n");
  return ret;
 }

 val = readl(lldev->trca + HIDMA_TRCA_CTRLSTS_REG);
 val &= ~(HIDMA_CH_CONTROL_MASK << 16);
 val |= HIDMA_CH_ENABLE << 16;
 writel(val, lldev->trca + HIDMA_TRCA_CTRLSTS_REG);

 ret = readl_poll_timeout(lldev->trca + HIDMA_TRCA_CTRLSTS_REG, val,
     hidma_is_chan_enabled(HIDMA_CH_STATE(val)),
     1000, 10000);
 if (ret) {
  dev_err(lldev->dev, "transfer channel did not get enabled\n");
  return ret;
 }

 lldev->trch_state = HIDMA_CH_ENABLED;
 lldev->evch_state = HIDMA_CH_ENABLED;


 writel(ENABLE_IRQS, lldev->evca + HIDMA_EVCA_IRQ_EN_REG);

 return 0;
}
