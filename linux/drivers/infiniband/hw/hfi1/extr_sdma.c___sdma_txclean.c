
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct sdma_txreq {size_t num_desc; scalar_t__ desc_limit; int * descp; int descs; int * coalesce_buf; } ;
struct hfi1_devdata {int dummy; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int SDMA_AHG_APPLY_UPDATE1 ;
 int ahg_mode (struct sdma_txreq*) ;
 int kfree (int *) ;
 int sdma_unmap_desc (struct hfi1_devdata*,int *) ;
 scalar_t__ unlikely (int) ;

void __sdma_txclean(
 struct hfi1_devdata *dd,
 struct sdma_txreq *tx)
{
 u16 i;

 if (tx->num_desc) {
  u8 skip = 0, mode = ahg_mode(tx);


  sdma_unmap_desc(dd, &tx->descp[0]);

  if (mode > SDMA_AHG_APPLY_UPDATE1)
   skip = mode >> 1;
  for (i = 1 + skip; i < tx->num_desc; i++)
   sdma_unmap_desc(dd, &tx->descp[i]);
  tx->num_desc = 0;
 }
 kfree(tx->coalesce_buf);
 tx->coalesce_buf = ((void*)0);

 if (unlikely(tx->desc_limit > ARRAY_SIZE(tx->descs))) {
  tx->desc_limit = ARRAY_SIZE(tx->descs);
  kfree(tx->descp);
 }
}
