
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct t3cdev {int dummy; } ;
struct rtable {int dummy; } ;
struct flowi4 {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;


 int IPPROTO_TCP ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int init_net ;
 struct rtable* ip_route_output_ports (int *,struct flowi4*,int *,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static struct rtable *find_route(struct t3cdev *dev, __be32 local_ip,
     __be32 peer_ip, __be16 local_port,
     __be16 peer_port, u8 tos)
{
 struct rtable *rt;
 struct flowi4 fl4;

 rt = ip_route_output_ports(&init_net, &fl4, ((void*)0), peer_ip, local_ip,
       peer_port, local_port, IPPROTO_TCP,
       tos, 0);
 if (IS_ERR(rt))
  return ((void*)0);
 return rt;
}
