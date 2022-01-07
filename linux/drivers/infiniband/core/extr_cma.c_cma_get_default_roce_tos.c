
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma_device {int* default_roce_tos; int device; } ;


 int EINVAL ;
 int rdma_is_port_valid (int ,unsigned int) ;
 unsigned int rdma_start_port (int ) ;

int cma_get_default_roce_tos(struct cma_device *cma_dev, unsigned int port)
{
 if (!rdma_is_port_valid(cma_dev->device, port))
  return -EINVAL;

 return cma_dev->default_roce_tos[port - rdma_start_port(cma_dev->device)];
}
