
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dmamux_data {int lock; int dma_inuse; int iomem; } ;
struct stm32_dmamux {int chan_id; int master; int request; } ;
struct device {int dummy; } ;


 int STM32_DMAMUX_CCR (int ) ;
 int clear_bit (int ,int ) ;
 int dev_dbg (struct device*,char*,int ,int ,int ) ;
 struct stm32_dmamux_data* dev_get_drvdata (struct device*) ;
 int kfree (struct stm32_dmamux*) ;
 int pm_runtime_put_sync (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stm32_dmamux_write (int ,int ,int ) ;

__attribute__((used)) static void stm32_dmamux_free(struct device *dev, void *route_data)
{
 struct stm32_dmamux_data *dmamux = dev_get_drvdata(dev);
 struct stm32_dmamux *mux = route_data;
 unsigned long flags;


 spin_lock_irqsave(&dmamux->lock, flags);

 stm32_dmamux_write(dmamux->iomem, STM32_DMAMUX_CCR(mux->chan_id), 0);
 clear_bit(mux->chan_id, dmamux->dma_inuse);

 pm_runtime_put_sync(dev);

 spin_unlock_irqrestore(&dmamux->lock, flags);

 dev_dbg(dev, "Unmapping DMAMUX(%u) to DMA%u(%u)\n",
  mux->request, mux->master, mux->chan_id);

 kfree(mux);
}
