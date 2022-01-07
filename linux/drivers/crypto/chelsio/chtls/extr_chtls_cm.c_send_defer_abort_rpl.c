
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct cpl_abort_rpl {int dummy; } ;
struct cpl_abort_req_rss {int status; } ;
struct chtls_dev {TYPE_1__* lldi; } ;
struct TYPE_2__ {int * ports; } ;


 int CPL_ABORT_NO_RST ;
 int CPL_PRIORITY_DATA ;
 int GET_TID (struct cpl_abort_req_rss*) ;
 int GFP_KERNEL ;
 int __GFP_NOFAIL ;
 int __skb_put (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (int,int) ;
 struct cpl_abort_req_rss* cplhdr (struct sk_buff*) ;
 int cxgb4_ofld_send (int ,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int set_abort_rpl_wr (struct sk_buff*,int ,int) ;
 int set_wr_txq (struct sk_buff*,int ,int) ;

__attribute__((used)) static void send_defer_abort_rpl(struct chtls_dev *cdev, struct sk_buff *skb)
{
 struct cpl_abort_req_rss *req = cplhdr(skb);
 struct sk_buff *reply_skb;

 reply_skb = alloc_skb(sizeof(struct cpl_abort_rpl),
         GFP_KERNEL | __GFP_NOFAIL);
 __skb_put(reply_skb, sizeof(struct cpl_abort_rpl));
 set_abort_rpl_wr(reply_skb, GET_TID(req),
    (req->status & CPL_ABORT_NO_RST));
 set_wr_txq(reply_skb, CPL_PRIORITY_DATA, req->status >> 1);
 cxgb4_ofld_send(cdev->lldi->ports[0], reply_skb);
 kfree_skb(skb);
}
