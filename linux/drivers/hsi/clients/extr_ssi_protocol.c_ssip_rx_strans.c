
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssi_protocol {scalar_t__ main_state; scalar_t__ rxid; int netdev; int lock; int send_state; } ;
struct sk_buff {int dev; } ;
struct hsi_msg {int complete; } ;
struct hsi_client {int device; } ;


 scalar_t__ ACTIVE ;
 int GFP_ATOMIC ;
 int RECEIVING ;
 scalar_t__ SSIP_MSG_ID (int ) ;
 int SSIP_PDU_LENGTH (int ) ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,...) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int hsi_async_read (struct hsi_client*,struct hsi_msg*) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 struct sk_buff* netdev_alloc_skb (int ,int) ;
 int skb_put (struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct hsi_msg* ssip_alloc_data (struct ssi_protocol*,struct sk_buff*,int ) ;
 int ssip_error (struct hsi_client*) ;
 int ssip_rx_data_complete ;
 int ssip_set_rxstate (struct ssi_protocol*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ssip_rx_strans(struct hsi_client *cl, u32 cmd)
{
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);
 struct sk_buff *skb;
 struct hsi_msg *msg;
 int len = SSIP_PDU_LENGTH(cmd);

 dev_dbg(&cl->device, "RX strans: %d frames\n", len);
 spin_lock_bh(&ssi->lock);
 if (unlikely(ssi->main_state != ACTIVE)) {
  dev_err(&cl->device, "START TRANS wrong state: S(%d) M(%d)\n",
     ssi->send_state, ssi->main_state);
  spin_unlock_bh(&ssi->lock);
  return;
 }
 ssip_set_rxstate(ssi, RECEIVING);
 if (unlikely(SSIP_MSG_ID(cmd) != ssi->rxid)) {
  dev_err(&cl->device, "START TRANS id %d expected %d\n",
     SSIP_MSG_ID(cmd), ssi->rxid);
  spin_unlock_bh(&ssi->lock);
  goto out1;
 }
 ssi->rxid++;
 spin_unlock_bh(&ssi->lock);
 skb = netdev_alloc_skb(ssi->netdev, len * 4);
 if (unlikely(!skb)) {
  dev_err(&cl->device, "No memory for rx skb\n");
  goto out1;
 }
 skb->dev = ssi->netdev;
 skb_put(skb, len * 4);
 msg = ssip_alloc_data(ssi, skb, GFP_ATOMIC);
 if (unlikely(!msg)) {
  dev_err(&cl->device, "No memory for RX data msg\n");
  goto out2;
 }
 msg->complete = ssip_rx_data_complete;
 hsi_async_read(cl, msg);

 return;
out2:
 dev_kfree_skb(skb);
out1:
 ssip_error(cl);
}
