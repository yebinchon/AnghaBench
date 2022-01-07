
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hidma_lldev {scalar_t__ evca; } ;
typedef int irqreturn_t ;


 scalar_t__ HIDMA_EVCA_IRQ_EN_REG ;
 scalar_t__ HIDMA_EVCA_IRQ_STAT_REG ;
 int IRQ_HANDLED ;
 int hidma_ll_int_handler_internal (struct hidma_lldev*,int) ;
 int readl_relaxed (scalar_t__) ;

irqreturn_t hidma_ll_inthandler(int chirq, void *arg)
{
 struct hidma_lldev *lldev = arg;
 u32 status;
 u32 enable;
 u32 cause;

 status = readl_relaxed(lldev->evca + HIDMA_EVCA_IRQ_STAT_REG);
 enable = readl_relaxed(lldev->evca + HIDMA_EVCA_IRQ_EN_REG);
 cause = status & enable;

 while (cause) {
  hidma_ll_int_handler_internal(lldev, cause);





  status = readl_relaxed(lldev->evca + HIDMA_EVCA_IRQ_STAT_REG);
  enable = readl_relaxed(lldev->evca + HIDMA_EVCA_IRQ_EN_REG);
  cause = status & enable;
 }

 return IRQ_HANDLED;
}
