
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int dummy; } ;
struct sock {int sk_family; } ;
struct chtls_sock {unsigned int tid; int port_id; int * l2t_entry; int * txdata_skb_cache; struct chtls_dev* cdev; } ;
struct chtls_dev {struct tid_info* tids; } ;


 int cxgb4_l2t_release (int *) ;
 int cxgb4_remove_tid (struct tid_info*,int ,unsigned int,int ) ;
 int kfree_skb (int *) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void chtls_release_resources(struct sock *sk)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(sk);
 struct chtls_dev *cdev = csk->cdev;
 unsigned int tid = csk->tid;
 struct tid_info *tids;

 if (!cdev)
  return;

 tids = cdev->tids;
 kfree_skb(csk->txdata_skb_cache);
 csk->txdata_skb_cache = ((void*)0);

 if (csk->l2t_entry) {
  cxgb4_l2t_release(csk->l2t_entry);
  csk->l2t_entry = ((void*)0);
 }

 cxgb4_remove_tid(tids, csk->port_id, tid, sk->sk_family);
 sock_put(sk);
}
