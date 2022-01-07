
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct tegra_adma_chan {TYPE_1__ vc; scalar_t__ desc; } ;
struct dma_chan {int dummy; } ;


 int LIST_HEAD (int ) ;
 int head ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tegra_adma_request_free (struct tegra_adma_chan*) ;
 int tegra_adma_stop (struct tegra_adma_chan*) ;
 struct tegra_adma_chan* to_tegra_adma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_1__*,int *) ;
 int vchan_get_all_descriptors (TYPE_1__*,int *) ;

__attribute__((used)) static int tegra_adma_terminate_all(struct dma_chan *dc)
{
 struct tegra_adma_chan *tdc = to_tegra_adma_chan(dc);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&tdc->vc.lock, flags);

 if (tdc->desc)
  tegra_adma_stop(tdc);

 tegra_adma_request_free(tdc);
 vchan_get_all_descriptors(&tdc->vc, &head);
 spin_unlock_irqrestore(&tdc->vc.lock, flags);
 vchan_dma_desc_free_list(&tdc->vc, &head);

 return 0;
}
