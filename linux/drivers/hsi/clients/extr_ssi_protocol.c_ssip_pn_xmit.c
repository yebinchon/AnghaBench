
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ssi_protocol {scalar_t__ main_state; scalar_t__ txqueue_len; scalar_t__ send_state; int lock; int work; int txqueue; } ;
struct sk_buff {int len; scalar_t__ data; int protocol; } ;
struct TYPE_4__ {int tx_bytes; int tx_dropped; int tx_packets; } ;
struct TYPE_3__ {int parent; } ;
struct net_device {scalar_t__ tx_queue_len; TYPE_2__ stats; TYPE_1__ dev; } ;
struct hsi_msg {int link; int complete; } ;
struct hsi_client {int device; } ;


 scalar_t__ ACTIVE ;
 int ETH_P_PHONET ;
 int GFP_ATOMIC ;
 scalar_t__ SEND_IDLE ;
 scalar_t__ SEND_READY ;
 int SSIP_MIN_PN_HDR ;
 int WAIT4READY ;
 int dev_dbg (int *,char*,...) ;
 int dev_info (int *,char*,scalar_t__) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 int hsi_free_msg (struct hsi_msg*) ;
 int hsi_start_tx (struct hsi_client*) ;
 int htons (int ) ;
 int list_add_tail (int *,int *) ;
 int netif_stop_queue (struct net_device*) ;
 int schedule_work (int *) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int ) ;
 scalar_t__ skb_pad (struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct hsi_msg* ssip_alloc_data (struct ssi_protocol*,struct sk_buff*,int ) ;
 int ssip_set_txstate (struct ssi_protocol*,int ) ;
 int ssip_tx_data_complete ;
 struct hsi_client* to_hsi_client (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ssip_pn_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct hsi_client *cl = to_hsi_client(dev->dev.parent);
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);
 struct hsi_msg *msg;

 if ((skb->protocol != htons(ETH_P_PHONET)) ||
     (skb->len < SSIP_MIN_PN_HDR))
  goto drop;

 if ((skb->len & 3) && skb_pad(skb, 4 - (skb->len & 3)))
  goto inc_dropped;





 if (skb_cow_head(skb, 0))
  goto drop;


 ((u16 *)skb->data)[2] = htons(((u16 *)skb->data)[2]);

 msg = ssip_alloc_data(ssi, skb, GFP_ATOMIC);
 if (!msg) {
  dev_dbg(&cl->device, "Dropping tx data: No memory\n");
  goto drop;
 }
 msg->complete = ssip_tx_data_complete;

 spin_lock_bh(&ssi->lock);
 if (unlikely(ssi->main_state != ACTIVE)) {
  spin_unlock_bh(&ssi->lock);
  dev_dbg(&cl->device, "Dropping tx data: CMT is OFFLINE\n");
  goto drop2;
 }
 list_add_tail(&msg->link, &ssi->txqueue);
 ssi->txqueue_len++;
 if (dev->tx_queue_len < ssi->txqueue_len) {
  dev_info(&cl->device, "TX queue full %d\n", ssi->txqueue_len);
  netif_stop_queue(dev);
 }
 if (ssi->send_state == SEND_IDLE) {
  ssip_set_txstate(ssi, WAIT4READY);
  spin_unlock_bh(&ssi->lock);
  dev_dbg(&cl->device, "Start TX qlen %d\n", ssi->txqueue_len);
  hsi_start_tx(cl);
 } else if (ssi->send_state == SEND_READY) {

  dev_dbg(&cl->device, "Start TX on SEND READY qlen %d\n",
       ssi->txqueue_len);
  spin_unlock_bh(&ssi->lock);
  schedule_work(&ssi->work);
 } else {
  spin_unlock_bh(&ssi->lock);
 }
 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;

 return 0;
drop2:
 hsi_free_msg(msg);
drop:
 dev_kfree_skb(skb);
inc_dropped:
 dev->stats.tx_dropped++;

 return 0;
}
