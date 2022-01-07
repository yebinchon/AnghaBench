
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hidma_lldev {scalar_t__ evch_state; scalar_t__ trch_state; scalar_t__ evca; int dev; scalar_t__ trca; } ;


 int HIDMA_CH_CONTROL_MASK ;
 scalar_t__ HIDMA_CH_DISABLED ;
 int HIDMA_CH_RESET ;
 scalar_t__ HIDMA_CH_STATE (int) ;
 scalar_t__ HIDMA_EVCA_CTRLSTS_REG ;
 scalar_t__ HIDMA_TRCA_CTRLSTS_REG ;
 int dev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int hidma_ll_reset(struct hidma_lldev *lldev)
{
 u32 val;
 int ret;

 val = readl(lldev->trca + HIDMA_TRCA_CTRLSTS_REG);
 val &= ~(HIDMA_CH_CONTROL_MASK << 16);
 val |= HIDMA_CH_RESET << 16;
 writel(val, lldev->trca + HIDMA_TRCA_CTRLSTS_REG);





 ret = readl_poll_timeout(lldev->trca + HIDMA_TRCA_CTRLSTS_REG, val,
     HIDMA_CH_STATE(val) == HIDMA_CH_DISABLED,
     1000, 10000);
 if (ret) {
  dev_err(lldev->dev, "transfer channel did not reset\n");
  return ret;
 }

 val = readl(lldev->evca + HIDMA_EVCA_CTRLSTS_REG);
 val &= ~(HIDMA_CH_CONTROL_MASK << 16);
 val |= HIDMA_CH_RESET << 16;
 writel(val, lldev->evca + HIDMA_EVCA_CTRLSTS_REG);





 ret = readl_poll_timeout(lldev->evca + HIDMA_EVCA_CTRLSTS_REG, val,
     HIDMA_CH_STATE(val) == HIDMA_CH_DISABLED,
     1000, 10000);
 if (ret)
  return ret;

 lldev->trch_state = HIDMA_CH_DISABLED;
 lldev->evch_state = HIDMA_CH_DISABLED;
 return 0;
}
