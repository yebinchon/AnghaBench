
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct sdma_txreq {TYPE_1__* descs; int num_desc; } ;
struct TYPE_2__ {int* qw; } ;


 int SDMA_AHG_APPLY_UPDATE1 ;


 int SDMA_DESC1_HEADER_DWS_MASK ;
 int SDMA_DESC1_HEADER_DWS_SHIFT ;
 int SDMA_DESC1_HEADER_INDEX_MASK ;
 int SDMA_DESC1_HEADER_INDEX_SHIFT ;
 int SDMA_DESC1_HEADER_MODE_MASK ;
 int SDMA_DESC1_HEADER_MODE_SHIFT ;
 int SDMA_DESC1_HEADER_UPDATE1_MASK ;
 int SDMA_DESC1_HEADER_UPDATE1_SHIFT ;
 int WARN_ON_ONCE (int) ;

void _sdma_txreq_ahgadd(
 struct sdma_txreq *tx,
 u8 num_ahg,
 u8 ahg_entry,
 u32 *ahg,
 u8 ahg_hlen)
{
 u32 i, shift = 0, desc = 0;
 u8 mode;

 WARN_ON_ONCE(num_ahg > 9 || (ahg_hlen & 3) || ahg_hlen == 4);

 if (num_ahg == 1)
  mode = SDMA_AHG_APPLY_UPDATE1;
 else if (num_ahg <= 5)
  mode = 129;
 else
  mode = 128;
 tx->num_desc++;

 switch (mode) {
 case 128:
  tx->num_desc++;
  tx->descs[2].qw[0] = 0;
  tx->descs[2].qw[1] = 0;

 case 129:
  tx->num_desc++;
  tx->descs[1].qw[0] = 0;
  tx->descs[1].qw[1] = 0;
  break;
 }
 ahg_hlen >>= 2;
 tx->descs[0].qw[1] |=
  (((u64)ahg_entry & SDMA_DESC1_HEADER_INDEX_MASK)
   << SDMA_DESC1_HEADER_INDEX_SHIFT) |
  (((u64)ahg_hlen & SDMA_DESC1_HEADER_DWS_MASK)
   << SDMA_DESC1_HEADER_DWS_SHIFT) |
  (((u64)mode & SDMA_DESC1_HEADER_MODE_MASK)
   << SDMA_DESC1_HEADER_MODE_SHIFT) |
  (((u64)ahg[0] & SDMA_DESC1_HEADER_UPDATE1_MASK)
   << SDMA_DESC1_HEADER_UPDATE1_SHIFT);
 for (i = 0; i < (num_ahg - 1); i++) {
  if (!shift && !(i & 2))
   desc++;
  tx->descs[desc].qw[!!(i & 2)] |=
   (((u64)ahg[i + 1])
    << shift);
  shift = (shift + 32) & 63;
 }
}
