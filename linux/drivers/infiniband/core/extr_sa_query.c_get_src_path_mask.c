
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_sa_port {int ah_lock; TYPE_1__* sm_ah; } ;
struct ib_sa_device {int start_port; struct ib_sa_port* port; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int src_path_mask; } ;


 struct ib_sa_device* ib_get_client_data (struct ib_device*,int *) ;
 int sa_client ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u8 get_src_path_mask(struct ib_device *device, u8 port_num)
{
 struct ib_sa_device *sa_dev;
 struct ib_sa_port *port;
 unsigned long flags;
 u8 src_path_mask;

 sa_dev = ib_get_client_data(device, &sa_client);
 if (!sa_dev)
  return 0x7f;

 port = &sa_dev->port[port_num - sa_dev->start_port];
 spin_lock_irqsave(&port->ah_lock, flags);
 src_path_mask = port->sm_ah ? port->sm_ah->src_path_mask : 0x7f;
 spin_unlock_irqrestore(&port->ah_lock, flags);

 return src_path_mask;
}
