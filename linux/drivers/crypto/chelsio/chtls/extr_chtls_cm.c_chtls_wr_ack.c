
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cpl_fw4_ack {int dummy; } ;
struct chtls_dev {int tids; } ;


 int EINVAL ;
 unsigned int GET_TID (struct cpl_fw4_ack*) ;
 int RSS_HDR ;
 int chtls_rx_ack ;
 struct cpl_fw4_ack* cplhdr (struct sk_buff*) ;
 struct sock* lookup_tid (int ,unsigned int) ;
 int pr_err (char*,unsigned int) ;
 int process_cpl_msg (int ,struct sock*,struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int chtls_wr_ack(struct chtls_dev *cdev, struct sk_buff *skb)
{
 struct cpl_fw4_ack *rpl = cplhdr(skb) + RSS_HDR;
 unsigned int hwtid = GET_TID(rpl);
 struct sock *sk;

 sk = lookup_tid(cdev->tids, hwtid);
 if (unlikely(!sk)) {
  pr_err("can't find conn. for hwtid %u.\n", hwtid);
  return -EINVAL;
 }
 process_cpl_msg(chtls_rx_ack, sk, skb);

 return 0;
}
