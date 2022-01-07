
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ib_sa_device {int start_port; int end_port; TYPE_2__* port; int event_handler; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int valid; } ;
struct TYPE_4__ {int port_num; int agent; int update_task; int ib_cpi_work; TYPE_1__ classport_info; int classport_lock; int * sm_ah; int ah_lock; } ;


 int GFP_KERNEL ;
 int IB_QPT_GSI ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_IB_EVENT_HANDLER (int *,struct ib_device*,int ) ;
 int INIT_WORK (int *,int (*) (int *)) ;
 scalar_t__ IS_ERR (int ) ;
 int ib_register_event_handler (int *) ;
 int ib_register_mad_agent (struct ib_device*,int,int ,int *,int ,int ,int ,struct ib_sa_device*,int ) ;
 int ib_sa_event ;
 int ib_set_client_data (struct ib_device*,int *,struct ib_sa_device*) ;
 int ib_unregister_mad_agent (int ) ;
 int kfree (struct ib_sa_device*) ;
 struct ib_sa_device* kzalloc (int ,int ) ;
 int port ;
 scalar_t__ rdma_cap_ib_sa (struct ib_device*,int) ;
 int rdma_end_port (struct ib_device*) ;
 int rdma_start_port (struct ib_device*) ;
 int recv_handler ;
 int sa_client ;
 int send_handler ;
 int spin_lock_init (int *) ;
 int struct_size (struct ib_sa_device*,int ,int) ;
 int update_ib_cpi ;
 int update_sm_ah (int *) ;

__attribute__((used)) static void ib_sa_add_one(struct ib_device *device)
{
 struct ib_sa_device *sa_dev;
 int s, e, i;
 int count = 0;

 s = rdma_start_port(device);
 e = rdma_end_port(device);

 sa_dev = kzalloc(struct_size(sa_dev, port, e - s + 1), GFP_KERNEL);
 if (!sa_dev)
  return;

 sa_dev->start_port = s;
 sa_dev->end_port = e;

 for (i = 0; i <= e - s; ++i) {
  spin_lock_init(&sa_dev->port[i].ah_lock);
  if (!rdma_cap_ib_sa(device, i + 1))
   continue;

  sa_dev->port[i].sm_ah = ((void*)0);
  sa_dev->port[i].port_num = i + s;

  spin_lock_init(&sa_dev->port[i].classport_lock);
  sa_dev->port[i].classport_info.valid = 0;

  sa_dev->port[i].agent =
   ib_register_mad_agent(device, i + s, IB_QPT_GSI,
           ((void*)0), 0, send_handler,
           recv_handler, sa_dev, 0);
  if (IS_ERR(sa_dev->port[i].agent))
   goto err;

  INIT_WORK(&sa_dev->port[i].update_task, update_sm_ah);
  INIT_DELAYED_WORK(&sa_dev->port[i].ib_cpi_work,
      update_ib_cpi);

  count++;
 }

 if (!count)
  goto free;

 ib_set_client_data(device, &sa_client, sa_dev);
 INIT_IB_EVENT_HANDLER(&sa_dev->event_handler, device, ib_sa_event);
 ib_register_event_handler(&sa_dev->event_handler);

 for (i = 0; i <= e - s; ++i) {
  if (rdma_cap_ib_sa(device, i + 1))
   update_sm_ah(&sa_dev->port[i].update_task);
 }

 return;

err:
 while (--i >= 0) {
  if (rdma_cap_ib_sa(device, i + 1))
   ib_unregister_mad_agent(sa_dev->port[i].agent);
 }
free:
 kfree(sa_dev);
 return;
}
