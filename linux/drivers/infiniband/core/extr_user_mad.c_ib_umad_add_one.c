
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_umad_device {int * ports; int kref; } ;
struct ib_device {int dummy; } ;


 int GFP_KERNEL ;
 int ib_set_client_data (struct ib_device*,int *,struct ib_umad_device*) ;
 int ib_umad_dev_put (struct ib_umad_device*) ;
 scalar_t__ ib_umad_init_port (struct ib_device*,int,struct ib_umad_device*,int *) ;
 int ib_umad_kill_port (int *) ;
 int kref_init (int *) ;
 struct ib_umad_device* kzalloc (int ,int ) ;
 int ports ;
 int rdma_cap_ib_mad (struct ib_device*,int) ;
 int rdma_end_port (struct ib_device*) ;
 int rdma_start_port (struct ib_device*) ;
 int struct_size (struct ib_umad_device*,int ,int) ;
 int umad_client ;

__attribute__((used)) static void ib_umad_add_one(struct ib_device *device)
{
 struct ib_umad_device *umad_dev;
 int s, e, i;
 int count = 0;

 s = rdma_start_port(device);
 e = rdma_end_port(device);

 umad_dev = kzalloc(struct_size(umad_dev, ports, e - s + 1), GFP_KERNEL);
 if (!umad_dev)
  return;

 kref_init(&umad_dev->kref);
 for (i = s; i <= e; ++i) {
  if (!rdma_cap_ib_mad(device, i))
   continue;

  if (ib_umad_init_port(device, i, umad_dev,
          &umad_dev->ports[i - s]))
   goto err;

  count++;
 }

 if (!count)
  goto free;

 ib_set_client_data(device, &umad_client, umad_dev);

 return;

err:
 while (--i >= s) {
  if (!rdma_cap_ib_mad(device, i))
   continue;

  ib_umad_kill_port(&umad_dev->ports[i - s]);
 }
free:

 ib_umad_dev_put(umad_dev);
}
