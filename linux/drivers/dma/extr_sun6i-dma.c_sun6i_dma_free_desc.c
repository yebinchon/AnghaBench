
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* chan; } ;
struct virt_dma_desc {TYPE_2__ tx; } ;
struct sun6i_dma_lli {int p_lli_next; struct sun6i_dma_lli* v_lli_next; } ;
struct sun6i_dma_dev {int pool; } ;
struct sun6i_desc {struct sun6i_dma_lli* v_lli; int p_lli; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int device; } ;


 int dma_pool_free (int ,struct sun6i_dma_lli*,int ) ;
 int kfree (struct sun6i_desc*) ;
 struct sun6i_desc* to_sun6i_desc (TYPE_2__*) ;
 struct sun6i_dma_dev* to_sun6i_dma_dev (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void sun6i_dma_free_desc(struct virt_dma_desc *vd)
{
 struct sun6i_desc *txd = to_sun6i_desc(&vd->tx);
 struct sun6i_dma_dev *sdev = to_sun6i_dma_dev(vd->tx.chan->device);
 struct sun6i_dma_lli *v_lli, *v_next;
 dma_addr_t p_lli, p_next;

 if (unlikely(!txd))
  return;

 p_lli = txd->p_lli;
 v_lli = txd->v_lli;

 while (v_lli) {
  v_next = v_lli->v_lli_next;
  p_next = v_lli->p_lli_next;

  dma_pool_free(sdev->pool, v_lli, p_lli);

  v_lli = v_next;
  p_lli = p_next;
 }

 kfree(txd);
}
