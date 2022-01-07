
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm3533_als {int irq; TYPE_1__* pdev; int lm3533; } ;
struct TYPE_2__ {int dev; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int LM3533_ALS_INT_ENABLE_MASK ;
 int LM3533_REG_ALS_ZONE_INFO ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 int lm3533_als_isr ;
 int lm3533_update (int ,int ,int ,int ) ;
 int request_threaded_irq (int ,int *,int ,int,int ,void*) ;

__attribute__((used)) static int lm3533_als_setup_irq(struct lm3533_als *als, void *dev)
{
 u8 mask = LM3533_ALS_INT_ENABLE_MASK;
 int ret;


 ret = lm3533_update(als->lm3533, LM3533_REG_ALS_ZONE_INFO, 0, mask);
 if (ret) {
  dev_err(&als->pdev->dev, "failed to disable interrupts\n");
  return ret;
 }

 ret = request_threaded_irq(als->irq, ((void*)0), lm3533_als_isr,
     IRQF_TRIGGER_LOW | IRQF_ONESHOT,
     dev_name(&als->pdev->dev), dev);
 if (ret) {
  dev_err(&als->pdev->dev, "failed to request irq %d\n",
        als->irq);
  return ret;
 }

 return 0;
}
