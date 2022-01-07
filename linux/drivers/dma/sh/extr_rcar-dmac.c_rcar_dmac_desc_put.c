
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_dmac_desc {int node; int chunks; } ;
struct TYPE_2__ {int free; int chunks_free; } ;
struct rcar_dmac_chan {int lock; TYPE_1__ desc; } ;


 int list_add (int *,int *) ;
 int list_splice_tail_init (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rcar_dmac_desc_put(struct rcar_dmac_chan *chan,
          struct rcar_dmac_desc *desc)
{
 unsigned long flags;

 spin_lock_irqsave(&chan->lock, flags);
 list_splice_tail_init(&desc->chunks, &chan->desc.chunks_free);
 list_add(&desc->node, &chan->desc.free);
 spin_unlock_irqrestore(&chan->lock, flags);
}
