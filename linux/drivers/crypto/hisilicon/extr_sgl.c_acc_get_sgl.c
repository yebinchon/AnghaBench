
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_acc_sgl_pool {int count; int sgl_size; scalar_t__ sgl; scalar_t__ sgl_dma; } ;
typedef void hisi_acc_hw_sgl ;
typedef scalar_t__ dma_addr_t ;


 int EINVAL ;
 void* ERR_PTR (int ) ;

struct hisi_acc_hw_sgl *acc_get_sgl(struct hisi_acc_sgl_pool *pool, u32 index,
        dma_addr_t *hw_sgl_dma)
{
 if (!pool || !hw_sgl_dma || index >= pool->count || !pool->sgl)
  return ERR_PTR(-EINVAL);

 *hw_sgl_dma = pool->sgl_dma + pool->sgl_size * index;
 return (void *)pool->sgl + pool->sgl_size * index;
}
