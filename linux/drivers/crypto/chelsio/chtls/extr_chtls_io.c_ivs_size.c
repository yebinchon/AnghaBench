
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int len; } ;


 int CIPHER_BLOCK_SIZE ;
 int nos_ivs (struct sock*,int ) ;
 scalar_t__ set_ivs_imm (struct sock*,struct sk_buff const*) ;

__attribute__((used)) static int ivs_size(struct sock *sk, const struct sk_buff *skb)
{
 return set_ivs_imm(sk, skb) ? (nos_ivs(sk, skb->len) *
   CIPHER_BLOCK_SIZE) : 0;
}
