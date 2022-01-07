
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssp_data {int shut_down; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; int irq; } ;


 int dev_info (int *,char*,int,int) ;
 int dev_warn (int *,char*,int,int) ;
 int disable_irq (int ) ;
 int disable_irq_wake (int ) ;
 int enable_irq (int ) ;
 int enable_irq_wake (int ) ;

__attribute__((used)) static void ssp_enable_mcu(struct ssp_data *data, bool enable)
{
 dev_info(&data->spi->dev, "current shutdown = %d, old = %d\n", enable,
   data->shut_down);

 if (enable && data->shut_down) {
  data->shut_down = 0;
  enable_irq(data->spi->irq);
  enable_irq_wake(data->spi->irq);
 } else if (!enable && !data->shut_down) {
  data->shut_down = 1;
  disable_irq(data->spi->irq);
  disable_irq_wake(data->spi->irq);
 } else {
  dev_warn(&data->spi->dev, "current shutdown = %d, old = %d\n",
    enable, data->shut_down);
 }
}
