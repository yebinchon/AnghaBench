
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct srp_target_port {int queue_size; int srp_host; } ;
struct srp_rdma_ch {TYPE_1__** rx_ring; TYPE_1__** tx_ring; int free_tx; int max_it_iu_len; int max_ti_iu_len; struct srp_target_port* target; } ;
struct TYPE_3__ {int list; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (int,int,int ) ;
 int kfree (TYPE_1__**) ;
 int list_add (int *,int *) ;
 void* srp_alloc_iu (int ,int ,int ,int ) ;
 int srp_free_iu (int ,TYPE_1__*) ;

__attribute__((used)) static int srp_alloc_iu_bufs(struct srp_rdma_ch *ch)
{
 struct srp_target_port *target = ch->target;
 int i;

 ch->rx_ring = kcalloc(target->queue_size, sizeof(*ch->rx_ring),
         GFP_KERNEL);
 if (!ch->rx_ring)
  goto err_no_ring;
 ch->tx_ring = kcalloc(target->queue_size, sizeof(*ch->tx_ring),
         GFP_KERNEL);
 if (!ch->tx_ring)
  goto err_no_ring;

 for (i = 0; i < target->queue_size; ++i) {
  ch->rx_ring[i] = srp_alloc_iu(target->srp_host,
           ch->max_ti_iu_len,
           GFP_KERNEL, DMA_FROM_DEVICE);
  if (!ch->rx_ring[i])
   goto err;
 }

 for (i = 0; i < target->queue_size; ++i) {
  ch->tx_ring[i] = srp_alloc_iu(target->srp_host,
           ch->max_it_iu_len,
           GFP_KERNEL, DMA_TO_DEVICE);
  if (!ch->tx_ring[i])
   goto err;

  list_add(&ch->tx_ring[i]->list, &ch->free_tx);
 }

 return 0;

err:
 for (i = 0; i < target->queue_size; ++i) {
  srp_free_iu(target->srp_host, ch->rx_ring[i]);
  srp_free_iu(target->srp_host, ch->tx_ring[i]);
 }


err_no_ring:
 kfree(ch->tx_ring);
 ch->tx_ring = ((void*)0);
 kfree(ch->rx_ring);
 ch->rx_ring = ((void*)0);

 return -ENOMEM;
}
