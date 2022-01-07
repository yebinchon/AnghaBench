
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cma_device {int device; int * default_roce_tos; } ;


 int EINVAL ;
 int rdma_is_port_valid (int ,unsigned int) ;
 unsigned int rdma_start_port (int ) ;

int cma_set_default_roce_tos(struct cma_device *cma_dev, unsigned int port,
        u8 default_roce_tos)
{
 if (!rdma_is_port_valid(cma_dev->device, port))
  return -EINVAL;

 cma_dev->default_roce_tos[port - rdma_start_port(cma_dev->device)] =
   default_roce_tos;

 return 0;
}
