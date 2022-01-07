
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u64 ;
struct vnic_txreq {size_t plen; int txreq; int pad; struct sk_buff* skb; struct hfi1_vnic_sdma* sdma; } ;
struct sk_buff {int dummy; } ;
struct sdma_engine {int dummy; } ;
struct hfi1_vnic_vport_info {struct hfi1_vnic_sdma* sdma; } ;
struct hfi1_vnic_sdma {int pkts_sent; int wait; int state; struct sdma_engine* sde; } ;
struct TYPE_2__ {int txreq_cache; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;


 int EBUSY ;
 int ECOMM ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ HFI1_VNIC_SDMA_Q_ACTIVE ;
 scalar_t__ READ_ONCE (int ) ;
 int build_vnic_tx_desc (struct sdma_engine*,struct vnic_txreq*,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int hfi1_vnic_update_pad (int ,size_t) ;
 int iowait_get_ib_work (int *) ;
 int iowait_starve_clear (int,int *) ;
 struct vnic_txreq* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct vnic_txreq*) ;
 int sdma_running (struct sdma_engine*) ;
 int sdma_send_txreq (struct sdma_engine*,int ,int *,int) ;
 int sdma_txclean (struct hfi1_devdata*,int *) ;
 scalar_t__ unlikely (int) ;

int hfi1_vnic_send_dma(struct hfi1_devdata *dd, u8 q_idx,
         struct hfi1_vnic_vport_info *vinfo,
         struct sk_buff *skb, u64 pbc, u8 plen)
{
 struct hfi1_vnic_sdma *vnic_sdma = &vinfo->sdma[q_idx];
 struct sdma_engine *sde = vnic_sdma->sde;
 struct vnic_txreq *tx;
 int ret = -ECOMM;

 if (unlikely(READ_ONCE(vnic_sdma->state) != HFI1_VNIC_SDMA_Q_ACTIVE))
  goto tx_err;

 if (unlikely(!sde || !sdma_running(sde)))
  goto tx_err;

 tx = kmem_cache_alloc(dd->vnic.txreq_cache, GFP_ATOMIC);
 if (unlikely(!tx)) {
  ret = -ENOMEM;
  goto tx_err;
 }

 tx->sdma = vnic_sdma;
 tx->skb = skb;
 hfi1_vnic_update_pad(tx->pad, plen);
 tx->plen = plen;
 ret = build_vnic_tx_desc(sde, tx, pbc);
 if (unlikely(ret))
  goto free_desc;

 ret = sdma_send_txreq(sde, iowait_get_ib_work(&vnic_sdma->wait),
         &tx->txreq, vnic_sdma->pkts_sent);

 if (unlikely(ret && unlikely(ret != -ECOMM)))
  goto free_desc;

 if (!ret) {
  vnic_sdma->pkts_sent = 1;
  iowait_starve_clear(vnic_sdma->pkts_sent, &vnic_sdma->wait);
 }
 return ret;

free_desc:
 sdma_txclean(dd, &tx->txreq);
 kmem_cache_free(dd->vnic.txreq_cache, tx);
tx_err:
 if (ret != -EBUSY)
  dev_kfree_skb_any(skb);
 else
  vnic_sdma->pkts_sent = 0;
 return ret;
}
