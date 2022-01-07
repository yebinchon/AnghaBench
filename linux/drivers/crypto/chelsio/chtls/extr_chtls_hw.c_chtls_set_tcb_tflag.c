
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct sock {int dummy; } ;


 int chtls_set_tcb_field (struct sock*,int,unsigned long long,unsigned int) ;

int chtls_set_tcb_tflag(struct sock *sk, unsigned int bit_pos, int val)
{
 return chtls_set_tcb_field(sk, 1, 1ULL << bit_pos,
       (u64)val << bit_pos);
}
