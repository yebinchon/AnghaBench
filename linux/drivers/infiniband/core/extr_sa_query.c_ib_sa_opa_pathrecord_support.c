
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {scalar_t__ type; int opa; } ;
struct TYPE_4__ {TYPE_1__ data; int valid; } ;
struct ib_sa_port {int classport_lock; TYPE_2__ classport_info; } ;
struct ib_sa_device {size_t start_port; struct ib_sa_port* port; } ;
struct ib_sa_client {int dummy; } ;
struct ib_device {int dummy; } ;


 int OPA_CLASS_PORT_INFO_PR_SUPPORT ;
 scalar_t__ RDMA_CLASS_PORT_INFO_OPA ;
 struct ib_sa_device* ib_get_client_data (struct ib_device*,int *) ;
 int opa_get_cpi_capmask2 (int *) ;
 int sa_client ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool ib_sa_opa_pathrecord_support(struct ib_sa_client *client,
      struct ib_device *device,
      u8 port_num)
{
 struct ib_sa_device *sa_dev = ib_get_client_data(device, &sa_client);
 struct ib_sa_port *port;
 unsigned long flags;
 bool ret = 0;

 if (!sa_dev)
  return ret;

 port = &sa_dev->port[port_num - sa_dev->start_port];
 spin_lock_irqsave(&port->classport_lock, flags);
 if (!port->classport_info.valid)
  goto ret;

 if (port->classport_info.data.type == RDMA_CLASS_PORT_INFO_OPA)
  ret = opa_get_cpi_capmask2(&port->classport_info.data.opa) &
   OPA_CLASS_PORT_INFO_PR_SUPPORT;
ret:
 spin_unlock_irqrestore(&port->classport_lock, flags);
 return ret;
}
