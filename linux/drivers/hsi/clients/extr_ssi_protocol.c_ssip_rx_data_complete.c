
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_protocol {int rx_wd; } ;
struct sk_buff {int dummy; } ;
struct hsi_msg {scalar_t__ status; struct sk_buff* context; struct hsi_client* cl; } ;
struct hsi_client {int device; } ;


 scalar_t__ HSI_STATUS_ERROR ;
 int del_timer (int *) ;
 int dev_err (int *,char*) ;
 struct ssi_protocol* hsi_client_drvdata (struct hsi_client*) ;
 int hsi_free_msg (struct hsi_msg*) ;
 int ssip_error (struct hsi_client*) ;
 int ssip_free_data (struct hsi_msg*) ;
 int ssip_pn_rx (struct sk_buff*) ;

__attribute__((used)) static void ssip_rx_data_complete(struct hsi_msg *msg)
{
 struct hsi_client *cl = msg->cl;
 struct ssi_protocol *ssi = hsi_client_drvdata(cl);
 struct sk_buff *skb;

 if (msg->status == HSI_STATUS_ERROR) {
  dev_err(&cl->device, "RX data error\n");
  ssip_free_data(msg);
  ssip_error(cl);
  return;
 }
 del_timer(&ssi->rx_wd);
 skb = msg->context;
 ssip_pn_rx(skb);
 hsi_free_msg(msg);
}
