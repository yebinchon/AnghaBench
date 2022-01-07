
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct cpl_rx_data_ack {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct c4iw_ep {int rcv_win; TYPE_2__ com; int ctrlq_idx; int hwtid; } ;
struct TYPE_3__ {int rdev; } ;


 int GFP_KERNEL ;
 int RCV_BUFSIZ_M ;
 int RX_DACK_CHANGE_F ;
 int RX_DACK_MODE_V (int ) ;
 int RX_FORCE_ACK_F ;
 int c4iw_ofld_send (int *,struct sk_buff*) ;
 int cxgb_mk_rx_data_ack (struct sk_buff*,int,int ,int ,int) ;
 int dack_mode ;
 struct sk_buff* get_skb (int *,int,int ) ;
 int pr_debug (char*,struct c4iw_ep*,int ,int) ;
 int pr_err (char*) ;
 int roundup (int,int) ;

__attribute__((used)) static int update_rx_credits(struct c4iw_ep *ep, u32 credits)
{
 struct sk_buff *skb;
 u32 wrlen = roundup(sizeof(struct cpl_rx_data_ack), 16);
 u32 credit_dack;

 pr_debug("ep %p tid %u credits %u\n",
   ep, ep->hwtid, credits);
 skb = get_skb(((void*)0), wrlen, GFP_KERNEL);
 if (!skb) {
  pr_err("update_rx_credits - cannot alloc skb!\n");
  return 0;
 }






 if (ep->rcv_win > RCV_BUFSIZ_M * 1024)
  credits += ep->rcv_win - RCV_BUFSIZ_M * 1024;

 credit_dack = credits | RX_FORCE_ACK_F | RX_DACK_CHANGE_F |
        RX_DACK_MODE_V(dack_mode);

 cxgb_mk_rx_data_ack(skb, wrlen, ep->hwtid, ep->ctrlq_idx,
       credit_dack);

 c4iw_ofld_send(&ep->com.dev->rdev, skb);
 return credits;
}
