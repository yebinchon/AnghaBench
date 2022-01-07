
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ib_gid {scalar_t__ raw; } ;
struct rxe_dev {int ndev; } ;
struct in6_addr {int dummy; } ;


 int ETH_ALEN ;
 int dev_mc_add (int ,unsigned char*) ;
 int ipv6_eth_mc_map (struct in6_addr*,unsigned char*) ;

int rxe_mcast_add(struct rxe_dev *rxe, union ib_gid *mgid)
{
 int err;
 unsigned char ll_addr[ETH_ALEN];

 ipv6_eth_mc_map((struct in6_addr *)mgid->raw, ll_addr);
 err = dev_mc_add(rxe->ndev, ll_addr);

 return err;
}
