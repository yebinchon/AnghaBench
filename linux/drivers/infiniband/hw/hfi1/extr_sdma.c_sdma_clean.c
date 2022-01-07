
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct sdma_engine {void* descq; int descq_cnt; int * tx_ring; scalar_t__ descq_phys; scalar_t__ head_phys; int * head_dma; } ;
struct hfi1_devdata {int sdma_heads_size; struct sdma_engine* sdma_rht; struct sdma_engine* per_sdma; int sde_map_lock; int sdma_map; TYPE_1__* pcidev; scalar_t__ sdma_heads_phys; int * sdma_heads_dma; scalar_t__ sdma_pad_phys; int * sdma_pad_dma; } ;
struct TYPE_2__ {int dev; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int SDMA_PAD ;
 int dma_free_coherent (int *,int,void*,scalar_t__) ;
 int kfree (struct sdma_engine*) ;
 int kvfree (int *) ;
 int rcu_access_pointer (int ) ;
 int rhashtable_free_and_destroy (struct sdma_engine*,int ,int *) ;
 int sdma_map_free (int ) ;
 int sdma_rht_free ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int synchronize_rcu () ;

void sdma_clean(struct hfi1_devdata *dd, size_t num_engines)
{
 size_t i;
 struct sdma_engine *sde;

 if (dd->sdma_pad_dma) {
  dma_free_coherent(&dd->pcidev->dev, SDMA_PAD,
      (void *)dd->sdma_pad_dma,
      dd->sdma_pad_phys);
  dd->sdma_pad_dma = ((void*)0);
  dd->sdma_pad_phys = 0;
 }
 if (dd->sdma_heads_dma) {
  dma_free_coherent(&dd->pcidev->dev, dd->sdma_heads_size,
      (void *)dd->sdma_heads_dma,
      dd->sdma_heads_phys);
  dd->sdma_heads_dma = ((void*)0);
  dd->sdma_heads_phys = 0;
 }
 for (i = 0; dd->per_sdma && i < num_engines; ++i) {
  sde = &dd->per_sdma[i];

  sde->head_dma = ((void*)0);
  sde->head_phys = 0;

  if (sde->descq) {
   dma_free_coherent(
    &dd->pcidev->dev,
    sde->descq_cnt * sizeof(u64[2]),
    sde->descq,
    sde->descq_phys
   );
   sde->descq = ((void*)0);
   sde->descq_phys = 0;
  }
  kvfree(sde->tx_ring);
  sde->tx_ring = ((void*)0);
 }
 spin_lock_irq(&dd->sde_map_lock);
 sdma_map_free(rcu_access_pointer(dd->sdma_map));
 RCU_INIT_POINTER(dd->sdma_map, ((void*)0));
 spin_unlock_irq(&dd->sde_map_lock);
 synchronize_rcu();
 kfree(dd->per_sdma);
 dd->per_sdma = ((void*)0);

 if (dd->sdma_rht) {
  rhashtable_free_and_destroy(dd->sdma_rht, sdma_rht_free, ((void*)0));
  kfree(dd->sdma_rht);
  dd->sdma_rht = ((void*)0);
 }
}
