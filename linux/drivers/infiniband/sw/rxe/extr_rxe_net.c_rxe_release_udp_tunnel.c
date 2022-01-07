
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int udp_tunnel_sock_release (struct socket*) ;

__attribute__((used)) static void rxe_release_udp_tunnel(struct socket *sk)
{
 if (sk)
  udp_tunnel_sock_release(sk);
}
