
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ulptx_sc_memrd {void* addr; void* cmd_to_len; } ;
struct ulptx_idata {void* len; void* cmd_more; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct chtls_hws {int keylen; int txkey; } ;
struct chtls_sock {struct chtls_dev* cdev; struct chtls_hws tlshws; } ;
struct TYPE_2__ {int start; } ;
struct chtls_dev {TYPE_1__ kmap; } ;


 int ULPTX_CMD_V (int ) ;
 int ULPTX_LEN16_V (int) ;
 int ULP_TX_SC_MEMRD ;
 int ULP_TX_SC_MORE_V (int) ;
 int ULP_TX_SC_NOOP ;
 scalar_t__ __skb_push (struct sk_buff*,int) ;
 void* htonl (int) ;
 int keyid_to_addr (int ,int ) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;

__attribute__((used)) static void tls_copy_tx_key(struct sock *sk, struct sk_buff *skb)
{
 struct ulptx_sc_memrd *sc_memrd;
 struct chtls_sock *csk;
 struct chtls_dev *cdev;
 struct ulptx_idata *sc;
 struct chtls_hws *hws;
 u32 immdlen;
 int kaddr;

 csk = rcu_dereference_sk_user_data(sk);
 hws = &csk->tlshws;
 cdev = csk->cdev;

 immdlen = sizeof(*sc) + sizeof(*sc_memrd);
 kaddr = keyid_to_addr(cdev->kmap.start, hws->txkey);
 sc = (struct ulptx_idata *)__skb_push(skb, immdlen);
 if (sc) {
  sc->cmd_more = htonl(ULPTX_CMD_V(ULP_TX_SC_NOOP));
  sc->len = htonl(0);
  sc_memrd = (struct ulptx_sc_memrd *)(sc + 1);
  sc_memrd->cmd_to_len =
    htonl(ULPTX_CMD_V(ULP_TX_SC_MEMRD) |
    ULP_TX_SC_MORE_V(1) |
    ULPTX_LEN16_V(hws->keylen >> 4));
  sc_memrd->addr = htonl(kaddr);
 }
}
