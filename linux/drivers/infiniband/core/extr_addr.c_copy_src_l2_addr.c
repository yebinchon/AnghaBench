
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {scalar_t__ sa_family; } ;
struct rdma_dev_addr {int network; } ;
struct net_device {scalar_t__ type; } ;
struct dst_entry {TYPE_1__* dev; } ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ AF_INET ;
 scalar_t__ ARPHRD_INFINIBAND ;
 int IFF_LOOPBACK ;
 int RDMA_NETWORK_IB ;
 int RDMA_NETWORK_IPV4 ;
 int RDMA_NETWORK_IPV6 ;
 scalar_t__ has_gateway (struct dst_entry const*,scalar_t__) ;
 int rdma_copy_src_l2_addr (struct rdma_dev_addr*,TYPE_1__*) ;
 int rdma_translate_ip (struct sockaddr const*,struct rdma_dev_addr*) ;

__attribute__((used)) static int copy_src_l2_addr(struct rdma_dev_addr *dev_addr,
       const struct sockaddr *dst_in,
       const struct dst_entry *dst,
       const struct net_device *ndev)
{
 int ret = 0;

 if (dst->dev->flags & IFF_LOOPBACK)
  ret = rdma_translate_ip(dst_in, dev_addr);
 else
  rdma_copy_src_l2_addr(dev_addr, dst->dev);






 if (has_gateway(dst, dst_in->sa_family) &&
     ndev->type != ARPHRD_INFINIBAND)
  dev_addr->network = dst_in->sa_family == AF_INET ?
      RDMA_NETWORK_IPV4 :
      RDMA_NETWORK_IPV6;
 else
  dev_addr->network = RDMA_NETWORK_IB;

 return ret;
}
