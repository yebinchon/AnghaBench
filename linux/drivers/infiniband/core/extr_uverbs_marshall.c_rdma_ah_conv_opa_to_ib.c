
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_ah_attr {int port_num; int type; } ;
struct ib_port_attr {int subnet_prefix; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int OPA_DEFAULT_GID_PREFIX ;
 int OPA_MAKE_ID (int ) ;
 int RDMA_AH_ATTR_TYPE_IB ;
 int cpu_to_be64 (int ) ;
 scalar_t__ ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;
 int rdma_ah_get_dlid (struct rdma_ah_attr*) ;
 int rdma_ah_set_grh (struct rdma_ah_attr*,int *,int ,int ,int,int ) ;
 int rdma_ah_set_interface_id (struct rdma_ah_attr*,int ) ;
 int rdma_ah_set_subnet_prefix (struct rdma_ah_attr*,int ) ;

__attribute__((used)) static int rdma_ah_conv_opa_to_ib(struct ib_device *dev,
      struct rdma_ah_attr *ib,
      struct rdma_ah_attr *opa)
{
 struct ib_port_attr port_attr;
 int ret = 0;


 *ib = *opa;

 ib->type = RDMA_AH_ATTR_TYPE_IB;
 rdma_ah_set_grh(ib, ((void*)0), 0, 0, 1, 0);

 if (ib_query_port(dev, opa->port_num, &port_attr)) {

  rdma_ah_set_subnet_prefix(ib, OPA_DEFAULT_GID_PREFIX);
  ret = -EINVAL;
 } else {
  rdma_ah_set_subnet_prefix(ib,
       cpu_to_be64(port_attr.subnet_prefix));
 }
 rdma_ah_set_interface_id(ib, OPA_MAKE_ID(rdma_ah_get_dlid(opa)));
 return ret;
}
