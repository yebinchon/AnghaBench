
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_tunnel_sock_cfg {int encap_type; int encap_rcv; } ;
struct udp_port_cfg {int ipv6_v6only; int local_udp_port; int family; } ;
struct socket {int dummy; } ;
struct net {int dummy; } ;
typedef int __be16 ;


 int AF_INET ;
 int AF_INET6 ;
 struct socket* ERR_PTR (int) ;
 int pr_err (char*,int) ;
 int rxe_udp_encap_recv ;
 int setup_udp_tunnel_sock (struct net*,struct socket*,struct udp_tunnel_sock_cfg*) ;
 int udp_sock_create (struct net*,struct udp_port_cfg*,struct socket**) ;

__attribute__((used)) static struct socket *rxe_setup_udp_tunnel(struct net *net, __be16 port,
        bool ipv6)
{
 int err;
 struct socket *sock;
 struct udp_port_cfg udp_cfg = { };
 struct udp_tunnel_sock_cfg tnl_cfg = { };

 if (ipv6) {
  udp_cfg.family = AF_INET6;
  udp_cfg.ipv6_v6only = 1;
 } else {
  udp_cfg.family = AF_INET;
 }

 udp_cfg.local_udp_port = port;


 err = udp_sock_create(net, &udp_cfg, &sock);
 if (err < 0) {
  pr_err("failed to create udp socket. err = %d\n", err);
  return ERR_PTR(err);
 }

 tnl_cfg.encap_type = 1;
 tnl_cfg.encap_rcv = rxe_udp_encap_recv;


 setup_udp_tunnel_sock(net, sock, &tnl_cfg);

 return sock;
}
