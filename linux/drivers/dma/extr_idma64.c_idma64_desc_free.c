
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idma64_hw_desc {int ndesc; struct idma64_hw_desc* hw; int llp; int lli; } ;
struct idma64_desc {int ndesc; struct idma64_desc* hw; int llp; int lli; } ;
struct idma64_chan {int pool; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct idma64_hw_desc*) ;

__attribute__((used)) static void idma64_desc_free(struct idma64_chan *idma64c,
  struct idma64_desc *desc)
{
 struct idma64_hw_desc *hw;

 if (desc->ndesc) {
  unsigned int i = desc->ndesc;

  do {
   hw = &desc->hw[--i];
   dma_pool_free(idma64c->pool, hw->lli, hw->llp);
  } while (i);
 }

 kfree(desc->hw);
 kfree(desc);
}
