
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sgid_index; TYPE_1__* sgid_attr; } ;
struct rdma_ah_attr {scalar_t__ port_num; scalar_t__ type; int ah_flags; TYPE_2__ grh; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ index; scalar_t__ port_num; } ;


 int EINVAL ;
 int IB_AH_GRH ;
 scalar_t__ RDMA_AH_ATTR_TYPE_ROCE ;
 scalar_t__ rdma_is_grh_required (struct ib_device*,scalar_t__) ;
 int rdma_is_port_valid (struct ib_device*,scalar_t__) ;

__attribute__((used)) static int rdma_check_ah_attr(struct ib_device *device,
         struct rdma_ah_attr *ah_attr)
{
 if (!rdma_is_port_valid(device, ah_attr->port_num))
  return -EINVAL;

 if ((rdma_is_grh_required(device, ah_attr->port_num) ||
      ah_attr->type == RDMA_AH_ATTR_TYPE_ROCE) &&
     !(ah_attr->ah_flags & IB_AH_GRH))
  return -EINVAL;

 if (ah_attr->grh.sgid_attr) {




  if (ah_attr->grh.sgid_attr->index != ah_attr->grh.sgid_index ||
      ah_attr->grh.sgid_attr->port_num != ah_attr->port_num)
   return -EINVAL;
 }
 return 0;
}
