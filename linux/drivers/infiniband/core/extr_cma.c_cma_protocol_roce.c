
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int port_num; struct ib_device* device; } ;
struct ib_device {int dummy; } ;


 int rdma_protocol_roce (struct ib_device*,int const) ;
 int rdma_start_port (struct ib_device*) ;

__attribute__((used)) static bool cma_protocol_roce(const struct rdma_cm_id *id)
{
 struct ib_device *device = id->device;
 const int port_num = id->port_num ?: rdma_start_port(device);

 return rdma_protocol_roce(device, port_num);
}
