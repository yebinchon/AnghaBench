
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; } ;
union ib_gid {TYPE_1__ member_0; } ;
typedef int u8 ;
struct rdma_ah_attr {int dummy; } ;
struct qedr_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {int raw; } ;
struct ib_global_route {TYPE_2__ dgid; } ;
typedef int in6 ;


 int DP_ERR (struct qedr_dev*,char*) ;
 int EINVAL ;
 int eth_zero_addr (int *) ;
 int ether_addr_copy (int *,int *) ;
 int memcmp (TYPE_2__*,union ib_gid*,int) ;
 int memcpy (struct in6_addr*,int ,int) ;
 struct ib_global_route* rdma_ah_read_grh (struct rdma_ah_attr*) ;
 int * rdma_ah_retrieve_dmac (struct rdma_ah_attr*) ;

__attribute__((used)) static inline int qedr_get_dmac(struct qedr_dev *dev,
    struct rdma_ah_attr *ah_attr, u8 *mac_addr)
{
 union ib_gid zero_sgid = { { 0 } };
 struct in6_addr in6;
 const struct ib_global_route *grh = rdma_ah_read_grh(ah_attr);
 u8 *dmac;

 if (!memcmp(&grh->dgid, &zero_sgid, sizeof(union ib_gid))) {
  DP_ERR(dev, "Local port GID not supported\n");
  eth_zero_addr(mac_addr);
  return -EINVAL;
 }

 memcpy(&in6, grh->dgid.raw, sizeof(in6));
 dmac = rdma_ah_retrieve_dmac(ah_attr);
 if (!dmac)
  return -EINVAL;
 ether_addr_copy(mac_addr, dmac);

 return 0;
}
