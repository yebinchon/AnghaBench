
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int CIPHER_BLOCK_SIZE ;
 int nos_ivs (struct sock*,int) ;

__attribute__((used)) static int max_ivs_size(struct sock *sk, int size)
{
 return nos_ivs(sk, size) * CIPHER_BLOCK_SIZE;
}
