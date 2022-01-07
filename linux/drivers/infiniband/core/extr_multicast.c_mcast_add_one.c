
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcast_port {int port_num; int refcount; int comp; int table; int lock; struct mcast_device* dev; } ;
struct mcast_device {int start_port; int end_port; int event_handler; struct ib_device* device; struct mcast_port* port; } ;
struct ib_device {int phys_port_cnt; } ;


 int GFP_KERNEL ;
 int INIT_IB_EVENT_HANDLER (int *,struct ib_device*,int ) ;
 int RB_ROOT ;
 int atomic_set (int *,int) ;
 int ib_register_event_handler (int *) ;
 int ib_set_client_data (struct ib_device*,int *,struct mcast_device*) ;
 int init_completion (int *) ;
 int kfree (struct mcast_device*) ;
 struct mcast_device* kmalloc (int ,int ) ;
 int mcast_client ;
 int mcast_event_handler ;
 int rdma_cap_ib_mcast (struct ib_device*,int) ;
 int rdma_end_port (struct ib_device*) ;
 int rdma_start_port (struct ib_device*) ;
 int spin_lock_init (int *) ;
 int struct_size (struct mcast_device*,struct mcast_port*,int ) ;

__attribute__((used)) static void mcast_add_one(struct ib_device *device)
{
 struct mcast_device *dev;
 struct mcast_port *port;
 int i;
 int count = 0;

 dev = kmalloc(struct_size(dev, port, device->phys_port_cnt),
        GFP_KERNEL);
 if (!dev)
  return;

 dev->start_port = rdma_start_port(device);
 dev->end_port = rdma_end_port(device);

 for (i = 0; i <= dev->end_port - dev->start_port; i++) {
  if (!rdma_cap_ib_mcast(device, dev->start_port + i))
   continue;
  port = &dev->port[i];
  port->dev = dev;
  port->port_num = dev->start_port + i;
  spin_lock_init(&port->lock);
  port->table = RB_ROOT;
  init_completion(&port->comp);
  atomic_set(&port->refcount, 1);
  ++count;
 }

 if (!count) {
  kfree(dev);
  return;
 }

 dev->device = device;
 ib_set_client_data(device, &mcast_client, dev);

 INIT_IB_EVENT_HANDLER(&dev->event_handler, device, mcast_event_handler);
 ib_register_event_handler(&dev->event_handler);
}
