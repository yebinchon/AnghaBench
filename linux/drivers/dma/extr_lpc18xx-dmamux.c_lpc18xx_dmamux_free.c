
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc18xx_dmamux_data {int lock; } ;
struct lpc18xx_dmamux {int busy; } ;
struct device {int dummy; } ;


 struct lpc18xx_dmamux_data* dev_get_drvdata (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lpc18xx_dmamux_free(struct device *dev, void *route_data)
{
 struct lpc18xx_dmamux_data *dmamux = dev_get_drvdata(dev);
 struct lpc18xx_dmamux *mux = route_data;
 unsigned long flags;

 spin_lock_irqsave(&dmamux->lock, flags);
 mux->busy = 0;
 spin_unlock_irqrestore(&dmamux->lock, flags);
}
