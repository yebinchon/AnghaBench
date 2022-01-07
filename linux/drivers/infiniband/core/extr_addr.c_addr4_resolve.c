
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct rtable {int dst; } ;
struct rdma_dev_addr {int hoplimit; int net; int bound_dev_if; } ;
struct flowi4 {void* saddr; int flowi4_oif; void* daddr; } ;
typedef int fl4 ;
typedef void* __be32 ;


 int PTR_ERR_OR_ZERO (struct rtable*) ;
 int ip4_dst_hoplimit (int *) ;
 struct rtable* ip_route_output_key (int ,struct flowi4*) ;
 int memset (struct flowi4*,int ,int) ;

__attribute__((used)) static int addr4_resolve(struct sockaddr *src_sock,
    const struct sockaddr *dst_sock,
    struct rdma_dev_addr *addr,
    struct rtable **prt)
{
 struct sockaddr_in *src_in = (struct sockaddr_in *)src_sock;
 const struct sockaddr_in *dst_in =
   (const struct sockaddr_in *)dst_sock;

 __be32 src_ip = src_in->sin_addr.s_addr;
 __be32 dst_ip = dst_in->sin_addr.s_addr;
 struct rtable *rt;
 struct flowi4 fl4;
 int ret;

 memset(&fl4, 0, sizeof(fl4));
 fl4.daddr = dst_ip;
 fl4.saddr = src_ip;
 fl4.flowi4_oif = addr->bound_dev_if;
 rt = ip_route_output_key(addr->net, &fl4);
 ret = PTR_ERR_OR_ZERO(rt);
 if (ret)
  return ret;

 src_in->sin_addr.s_addr = fl4.saddr;

 addr->hoplimit = ip4_dst_hoplimit(&rt->dst);

 *prt = rt;
 return 0;
}
