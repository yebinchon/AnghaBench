
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cpl_tls_data {int dummy; } ;
struct chtls_dev {int tids; } ;


 int EINVAL ;
 unsigned int GET_TID (struct cpl_tls_data*) ;
 int chtls_recv_pdu ;
 struct cpl_tls_data* cplhdr (struct sk_buff*) ;
 struct sock* lookup_tid (int ,unsigned int) ;
 int pr_err (char*,unsigned int) ;
 int process_cpl_msg (int ,struct sock*,struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int chtls_rx_pdu(struct chtls_dev *cdev, struct sk_buff *skb)
{
 struct cpl_tls_data *req = cplhdr(skb);
 unsigned int hwtid = GET_TID(req);
 struct sock *sk;

 sk = lookup_tid(cdev->tids, hwtid);
 if (unlikely(!sk)) {
  pr_err("can't find conn. for hwtid %u.\n", hwtid);
  return -EINVAL;
 }
 skb_dst_set(skb, ((void*)0));
 process_cpl_msg(chtls_recv_pdu, sk, skb);
 return 0;
}
