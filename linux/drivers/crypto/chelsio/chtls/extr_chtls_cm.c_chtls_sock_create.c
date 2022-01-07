
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ofld; int txkey; int rxkey; int sk_recv_queue; int mfs; } ;
struct chtls_sock {TYPE_1__ tlshws; int mss; int * wr_skb_tail; int * wr_skb_head; int txq; struct chtls_dev* cdev; int kref; int txdata_skb_cache; } ;
struct chtls_dev {int dummy; } ;


 int GFP_ATOMIC ;
 int MAX_MSS ;
 int TLS_MFS ;
 int TXDATA_SKB_LEN ;
 int alloc_skb (int ,int ) ;
 int kfree (struct chtls_sock*) ;
 int kref_init (int *) ;
 struct chtls_sock* kzalloc (int,int ) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static struct chtls_sock *chtls_sock_create(struct chtls_dev *cdev)
{
 struct chtls_sock *csk = kzalloc(sizeof(*csk), GFP_ATOMIC);

 if (!csk)
  return ((void*)0);

 csk->txdata_skb_cache = alloc_skb(TXDATA_SKB_LEN, GFP_ATOMIC);
 if (!csk->txdata_skb_cache) {
  kfree(csk);
  return ((void*)0);
 }

 kref_init(&csk->kref);
 csk->cdev = cdev;
 skb_queue_head_init(&csk->txq);
 csk->wr_skb_head = ((void*)0);
 csk->wr_skb_tail = ((void*)0);
 csk->mss = MAX_MSS;
 csk->tlshws.ofld = 1;
 csk->tlshws.txkey = -1;
 csk->tlshws.rxkey = -1;
 csk->tlshws.mfs = TLS_MFS;
 skb_queue_head_init(&csk->tlshws.sk_recv_queue);
 return csk;
}
