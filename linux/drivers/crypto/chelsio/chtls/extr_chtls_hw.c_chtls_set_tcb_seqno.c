
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int chtls_set_tcb_field (struct sock*,int,unsigned long long,int ) ;

__attribute__((used)) static int chtls_set_tcb_seqno(struct sock *sk)
{
 return chtls_set_tcb_field(sk, 28, ~0ULL, 0);
}
