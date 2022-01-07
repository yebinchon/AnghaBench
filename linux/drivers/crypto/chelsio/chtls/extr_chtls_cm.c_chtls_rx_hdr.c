
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlsrx_cmp_hdr {int res_to_mac_error; int type; } ;
struct tcp_sock {int rcv_nxt; } ;
struct sock {int (* sk_data_ready ) (struct sock*) ;int sk_receive_queue; } ;
struct sk_buff {int data_len; scalar_t__ data; } ;
struct cpl_rx_tls_cmp {int pdulength_length; int seq; } ;
struct chtls_hws {scalar_t__ pldlen; int sk_recv_queue; } ;
struct chtls_sock {struct chtls_hws tlshws; } ;
struct TYPE_2__ {int flags; int seq; } ;


 int CONTENT_TYPE_ERROR ;
 scalar_t__ CPL_RX_TLS_CMP_PDULENGTH_G (int ) ;
 int SOCK_DEAD ;
 int TLSRX_HDR_PKT_ERROR_M ;
 int TLS_HEADER_LENGTH ;
 int ULPCB_FLAG_TLS_HDR ;
 TYPE_1__* ULP_SKB_CB (struct sk_buff*) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int __skb_pull (struct sk_buff*,int) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int __skb_trim (struct sk_buff*,int ) ;
 int check_sk_callbacks (struct chtls_sock*) ;
 int chtls_set_hdrlen (struct sk_buff*,scalar_t__) ;
 struct cpl_rx_tls_cmp* cplhdr (struct sk_buff*) ;
 int ntohl (int ) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void chtls_rx_hdr(struct sock *sk, struct sk_buff *skb)
{
 struct tlsrx_cmp_hdr *tls_hdr_pkt;
 struct cpl_rx_tls_cmp *cmp_cpl;
 struct sk_buff *skb_rec;
 struct chtls_sock *csk;
 struct chtls_hws *tlsk;
 struct tcp_sock *tp;

 cmp_cpl = cplhdr(skb);
 csk = rcu_dereference_sk_user_data(sk);
 tlsk = &csk->tlshws;
 tp = tcp_sk(sk);

 ULP_SKB_CB(skb)->seq = ntohl(cmp_cpl->seq);
 ULP_SKB_CB(skb)->flags = 0;

 skb_reset_transport_header(skb);
 __skb_pull(skb, sizeof(*cmp_cpl));
 tls_hdr_pkt = (struct tlsrx_cmp_hdr *)skb->data;
 if (tls_hdr_pkt->res_to_mac_error & TLSRX_HDR_PKT_ERROR_M)
  tls_hdr_pkt->type = CONTENT_TYPE_ERROR;
 if (!skb->data_len)
  __skb_trim(skb, TLS_HEADER_LENGTH);

 tp->rcv_nxt +=
  CPL_RX_TLS_CMP_PDULENGTH_G(ntohl(cmp_cpl->pdulength_length));

 ULP_SKB_CB(skb)->flags |= ULPCB_FLAG_TLS_HDR;
 skb_rec = __skb_dequeue(&tlsk->sk_recv_queue);
 if (!skb_rec) {
  __skb_queue_tail(&sk->sk_receive_queue, skb);
 } else {
  chtls_set_hdrlen(skb, tlsk->pldlen);
  tlsk->pldlen = 0;
  __skb_queue_tail(&sk->sk_receive_queue, skb);
  __skb_queue_tail(&sk->sk_receive_queue, skb_rec);
 }

 if (!sock_flag(sk, SOCK_DEAD)) {
  check_sk_callbacks(csk);
  sk->sk_data_ready(sk);
 }
}
