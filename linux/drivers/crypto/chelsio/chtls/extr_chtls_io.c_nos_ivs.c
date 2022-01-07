
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int mfs; } ;
struct chtls_sock {TYPE_1__ tlshws; } ;


 int DIV_ROUND_UP (unsigned int,int ) ;
 struct chtls_sock* rcu_dereference_sk_user_data (struct sock*) ;

__attribute__((used)) static int nos_ivs(struct sock *sk, unsigned int size)
{
 struct chtls_sock *csk = rcu_dereference_sk_user_data(sk);

 return DIV_ROUND_UP(size, csk->tlshws.mfs);
}
