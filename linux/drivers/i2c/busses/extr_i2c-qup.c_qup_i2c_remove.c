
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dma; } ;
struct TYPE_3__ {int dma; } ;
struct qup_i2c_dev {int dev; int adap; int irq; TYPE_2__ brx; TYPE_1__ btx; scalar_t__ is_dma; } ;
struct platform_device {int dummy; } ;


 int disable_irq (int ) ;
 int dma_release_channel (int ) ;
 int i2c_del_adapter (int *) ;
 struct qup_i2c_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_set_suspended (int ) ;
 int qup_i2c_disable_clocks (struct qup_i2c_dev*) ;

__attribute__((used)) static int qup_i2c_remove(struct platform_device *pdev)
{
 struct qup_i2c_dev *qup = platform_get_drvdata(pdev);

 if (qup->is_dma) {
  dma_release_channel(qup->btx.dma);
  dma_release_channel(qup->brx.dma);
 }

 disable_irq(qup->irq);
 qup_i2c_disable_clocks(qup);
 i2c_del_adapter(&qup->adap);
 pm_runtime_disable(qup->dev);
 pm_runtime_set_suspended(qup->dev);
 return 0;
}
