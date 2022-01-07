
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_tdma_desc {int dummy; } ;
struct mmp_tdma_chan {int desc_num; struct mmp_tdma_desc* desc_arr; int desc_arr_phys; struct gen_pool* pool; } ;
struct gen_pool {int dummy; } ;


 struct mmp_tdma_desc* gen_pool_dma_alloc (struct gen_pool*,int,int *) ;

__attribute__((used)) static struct mmp_tdma_desc *mmp_tdma_alloc_descriptor(struct mmp_tdma_chan *tdmac)
{
 struct gen_pool *gpool;
 int size = tdmac->desc_num * sizeof(struct mmp_tdma_desc);

 gpool = tdmac->pool;
 if (!gpool)
  return ((void*)0);

 tdmac->desc_arr = gen_pool_dma_alloc(gpool, size, &tdmac->desc_arr_phys);

 return tdmac->desc_arr;
}
