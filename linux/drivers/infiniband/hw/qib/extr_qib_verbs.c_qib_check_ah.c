
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_ah_attr {int dummy; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int IB_AH_GRH ;
 int IB_LID_PERMISSIVE ;
 int IB_MULTICAST_LID_BASE ;
 scalar_t__ be16_to_cpu (int ) ;
 int rdma_ah_get_ah_flags (struct rdma_ah_attr*) ;
 scalar_t__ rdma_ah_get_dlid (struct rdma_ah_attr*) ;
 int rdma_ah_get_sl (struct rdma_ah_attr*) ;

int qib_check_ah(struct ib_device *ibdev, struct rdma_ah_attr *ah_attr)
{
 if (rdma_ah_get_sl(ah_attr) > 15)
  return -EINVAL;

 if (rdma_ah_get_dlid(ah_attr) == 0)
  return -EINVAL;
 if (rdma_ah_get_dlid(ah_attr) >=
  be16_to_cpu(IB_MULTICAST_LID_BASE) &&
     rdma_ah_get_dlid(ah_attr) !=
  be16_to_cpu(IB_LID_PERMISSIVE) &&
     !(rdma_ah_get_ah_flags(ah_attr) & IB_AH_GRH))
  return -EINVAL;

 return 0;
}
