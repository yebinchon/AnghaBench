
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * sgid_attr; } ;
struct rdma_ah_attr {TYPE_1__ grh; } ;
struct ib_ah {TYPE_3__* device; } ;
struct TYPE_5__ {int (* query_ah ) (struct ib_ah*,struct rdma_ah_attr*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct ib_ah*,struct rdma_ah_attr*) ;

int rdma_query_ah(struct ib_ah *ah, struct rdma_ah_attr *ah_attr)
{
 ah_attr->grh.sgid_attr = ((void*)0);

 return ah->device->ops.query_ah ?
  ah->device->ops.query_ah(ah, ah_attr) :
  -EOPNOTSUPP;
}
