
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 unsigned long long TF_RX_QUIESCE_S ;
 int TF_RX_QUIESCE_V (int) ;
 int chtls_set_tcb_field (struct sock*,int,unsigned long long,int ) ;

__attribute__((used)) static int chtls_set_tcb_quiesce(struct sock *sk, int val)
{
 return chtls_set_tcb_field(sk, 1, (1ULL << TF_RX_QUIESCE_S),
       TF_RX_QUIESCE_V(val));
}
