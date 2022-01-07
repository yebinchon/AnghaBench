
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int prev; } ;
struct fsldma_chan {TYPE_2__ ld_pending; } ;
struct TYPE_4__ {int phys; } ;
struct fsl_desc_sw {int tx_list; TYPE_1__ async_tx; int hw; } ;


 scalar_t__ list_empty (TYPE_2__*) ;
 int list_splice_tail_init (int *,TYPE_2__*) ;
 int set_desc_next (struct fsldma_chan*,int *,int ) ;
 struct fsl_desc_sw* to_fsl_desc (int ) ;

__attribute__((used)) static void append_ld_queue(struct fsldma_chan *chan, struct fsl_desc_sw *desc)
{
 struct fsl_desc_sw *tail = to_fsl_desc(chan->ld_pending.prev);

 if (list_empty(&chan->ld_pending))
  goto out_splice;
 set_desc_next(chan, &tail->hw, desc->async_tx.phys);





out_splice:
 list_splice_tail_init(&desc->tx_list, &chan->ld_pending);
}
