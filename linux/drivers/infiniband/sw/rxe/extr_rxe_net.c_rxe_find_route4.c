
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; } ;
struct net_device {int ifindex; } ;
struct in_addr {int s_addr; } ;
struct TYPE_2__ {int member_0; } ;
struct flowi4 {int flowi4_proto; int daddr; int saddr; int flowi4_oif; TYPE_1__ member_0; } ;
typedef int fl ;


 int IPPROTO_UDP ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int init_net ;
 struct rtable* ip_route_output_key (int *,struct flowi4*) ;
 int memcpy (int *,struct in_addr*,int) ;
 int memset (struct flowi4*,int ,int) ;
 int pr_err_ratelimited (char*,int *) ;

__attribute__((used)) static struct dst_entry *rxe_find_route4(struct net_device *ndev,
      struct in_addr *saddr,
      struct in_addr *daddr)
{
 struct rtable *rt;
 struct flowi4 fl = { { 0 } };

 memset(&fl, 0, sizeof(fl));
 fl.flowi4_oif = ndev->ifindex;
 memcpy(&fl.saddr, saddr, sizeof(*saddr));
 memcpy(&fl.daddr, daddr, sizeof(*daddr));
 fl.flowi4_proto = IPPROTO_UDP;

 rt = ip_route_output_key(&init_net, &fl);
 if (IS_ERR(rt)) {
  pr_err_ratelimited("no route to %pI4\n", &daddr->s_addr);
  return ((void*)0);
 }

 return &rt->dst;
}
