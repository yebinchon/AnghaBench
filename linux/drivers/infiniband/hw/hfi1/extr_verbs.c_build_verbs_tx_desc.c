
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ hdr_type; } ;
struct hfi1_sdma_header {int pbc; TYPE_1__ hdr; } ;
struct verbs_txreq {int hdr_dwords; int txreq; scalar_t__ ss; struct hfi1_sdma_header phdr; } ;
struct sdma_engine {TYPE_2__* dd; } ;
struct hfi1_ahg_info {int * ahgdesc; int ahgcount; int ahgidx; int tx_flags; } ;
typedef int pbc ;
struct TYPE_5__ {int sdma_pad_phys; } ;


 int SIZE_OF_CRC ;
 int SIZE_OF_LT ;
 int build_verbs_ulp_payload (struct sdma_engine*,int,struct verbs_txreq*) ;
 int cpu_to_le64 (int ) ;
 int hfi1_get_16b_padding (int,int) ;
 int sdma_txadd_daddr (TYPE_2__*,int *,int ,int) ;
 int sdma_txadd_kvaddr (TYPE_2__*,int *,struct hfi1_sdma_header*,int) ;
 int sdma_txinit_ahg (int *,int ,int,int ,int ,int *,int,int ) ;
 int verbs_sdma_complete ;

__attribute__((used)) static int build_verbs_tx_desc(
 struct sdma_engine *sde,
 u32 length,
 struct verbs_txreq *tx,
 struct hfi1_ahg_info *ahg_info,
 u64 pbc)
{
 int ret = 0;
 struct hfi1_sdma_header *phdr = &tx->phdr;
 u16 hdrbytes = (tx->hdr_dwords + sizeof(pbc) / 4) << 2;
 u8 extra_bytes = 0;

 if (tx->phdr.hdr.hdr_type) {




  extra_bytes = hfi1_get_16b_padding(hdrbytes - 8, length) +
         (SIZE_OF_CRC << 2) + SIZE_OF_LT;
 }
 if (!ahg_info->ahgcount) {
  ret = sdma_txinit_ahg(
   &tx->txreq,
   ahg_info->tx_flags,
   hdrbytes + length +
   extra_bytes,
   ahg_info->ahgidx,
   0,
   ((void*)0),
   0,
   verbs_sdma_complete);
  if (ret)
   goto bail_txadd;
  phdr->pbc = cpu_to_le64(pbc);
  ret = sdma_txadd_kvaddr(
   sde->dd,
   &tx->txreq,
   phdr,
   hdrbytes);
  if (ret)
   goto bail_txadd;
 } else {
  ret = sdma_txinit_ahg(
   &tx->txreq,
   ahg_info->tx_flags,
   length,
   ahg_info->ahgidx,
   ahg_info->ahgcount,
   ahg_info->ahgdesc,
   hdrbytes,
   verbs_sdma_complete);
  if (ret)
   goto bail_txadd;
 }

 if (tx->ss) {
  ret = build_verbs_ulp_payload(sde, length, tx);
  if (ret)
   goto bail_txadd;
 }


 if (extra_bytes)
  ret = sdma_txadd_daddr(sde->dd, &tx->txreq,
           sde->dd->sdma_pad_phys, extra_bytes);

bail_txadd:
 return ret;
}
