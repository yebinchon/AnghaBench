
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct vnic_txreq {int plen; int pbc_val; int txreq; TYPE_1__* skb; } ;
struct sdma_engine {int dd; } ;
struct TYPE_2__ {int len; } ;


 int build_vnic_ulp_payload (struct sdma_engine*,struct vnic_txreq*) ;
 int cpu_to_le64 (int ) ;
 int sdma_txadd_kvaddr (int ,int *,int *,int) ;
 int sdma_txinit_ahg (int *,int ,int,int ,int ,int *,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int vnic_sdma_complete ;

__attribute__((used)) static int build_vnic_tx_desc(struct sdma_engine *sde,
         struct vnic_txreq *tx,
         u64 pbc)
{
 int ret = 0;
 u16 hdrbytes = 2 << 2;

 ret = sdma_txinit_ahg(
  &tx->txreq,
  0,
  hdrbytes + tx->skb->len + tx->plen,
  0,
  0,
  ((void*)0),
  0,
  vnic_sdma_complete);
 if (unlikely(ret))
  goto bail_txadd;


 tx->pbc_val = cpu_to_le64(pbc);
 ret = sdma_txadd_kvaddr(
  sde->dd,
  &tx->txreq,
  &tx->pbc_val,
  hdrbytes);
 if (unlikely(ret))
  goto bail_txadd;


 ret = build_vnic_ulp_payload(sde, tx);
bail_txadd:
 return ret;
}
