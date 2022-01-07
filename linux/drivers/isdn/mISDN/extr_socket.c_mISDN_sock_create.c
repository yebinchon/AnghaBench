
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct net {int dummy; } ;


 int EPROTONOSUPPORT ;
 int base_sock_create (struct net*,struct socket*,int,int) ;
 int data_sock_create (struct net*,struct socket*,int,int) ;

__attribute__((used)) static int
mISDN_sock_create(struct net *net, struct socket *sock, int proto, int kern)
{
 int err = -EPROTONOSUPPORT;

 switch (proto) {
 case 140:
  err = base_sock_create(net, sock, proto, kern);
  break;
 case 128:
 case 130:
 case 129:
 case 131:
 case 132:
 case 133:
 case 135:
 case 139:
 case 134:
 case 136:
 case 138:
 case 137:
  err = data_sock_create(net, sock, proto, kern);
  break;
 default:
  return err;
 }

 return err;
}
