
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct inet_connection_sock {TYPE_1__* icsk_ulp_ops; } ;
struct TYPE_2__ {int owner; } ;


 struct inet_connection_sock* inet_csk (struct sock*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int chtls_get_module(struct sock *sk)
{
 struct inet_connection_sock *icsk = inet_csk(sk);

 if (!try_module_get(icsk->icsk_ulp_ops->owner))
  return -1;

 return 0;
}
