
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_bind_hash; } ;


 TYPE_1__* inet_csk (struct sock*) ;
 int inet_put_port (struct sock*) ;

__attribute__((used)) static void release_tcp_port(struct sock *sk)
{
 if (inet_csk(sk)->icsk_bind_hash)
  inet_put_port(sk);
}
