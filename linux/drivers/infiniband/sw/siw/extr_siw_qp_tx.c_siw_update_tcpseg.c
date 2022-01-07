
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int gso_segs; int mss_cache; } ;
struct socket {int sk; } ;
struct siw_iwarp_tx {scalar_t__ gso_seg_limit; int tcp_seglen; } ;


 int min_t (int ,scalar_t__,int) ;
 struct tcp_sock* tcp_sk (int ) ;
 int u16 ;

__attribute__((used)) static void siw_update_tcpseg(struct siw_iwarp_tx *c_tx,
         struct socket *s)
{
 struct tcp_sock *tp = tcp_sk(s->sk);

 if (tp->gso_segs) {
  if (c_tx->gso_seg_limit == 0)
   c_tx->tcp_seglen = tp->mss_cache * tp->gso_segs;
  else
   c_tx->tcp_seglen =
    tp->mss_cache *
    min_t(u16, c_tx->gso_seg_limit, tp->gso_segs);
 } else {
  c_tx->tcp_seglen = tp->mss_cache;
 }

 c_tx->tcp_seglen &= 0xfffffff8;
}
