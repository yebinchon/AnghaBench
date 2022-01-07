
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isert_device {int pi_capable; int pd; struct ib_device* ib_device; } ;
struct TYPE_2__ {int device_cap_flags; int max_sge_rd; int max_recv_sge; int max_send_sge; } ;
struct ib_device {TYPE_1__ attrs; } ;


 int EINVAL ;
 int IB_DEVICE_INTEGRITY_HANDOVER ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int ib_alloc_pd (struct ib_device*,int ) ;
 int isert_alloc_comps (struct isert_device*) ;
 int isert_dbg (char*,int ,...) ;
 int isert_err (char*,struct isert_device*,int) ;
 int isert_free_comps (struct isert_device*) ;

__attribute__((used)) static int
isert_create_device_ib_res(struct isert_device *device)
{
 struct ib_device *ib_dev = device->ib_device;
 int ret;

 isert_dbg("devattr->max_send_sge: %d devattr->max_recv_sge %d\n",
    ib_dev->attrs.max_send_sge, ib_dev->attrs.max_recv_sge);
 isert_dbg("devattr->max_sge_rd: %d\n", ib_dev->attrs.max_sge_rd);

 ret = isert_alloc_comps(device);
 if (ret)
  goto out;

 device->pd = ib_alloc_pd(ib_dev, 0);
 if (IS_ERR(device->pd)) {
  ret = PTR_ERR(device->pd);
  isert_err("failed to allocate pd, device %p, ret=%d\n",
     device, ret);
  goto out_cq;
 }


 device->pi_capable = ib_dev->attrs.device_cap_flags &
        IB_DEVICE_INTEGRITY_HANDOVER ? 1 : 0;

 return 0;

out_cq:
 isert_free_comps(device);
out:
 if (ret > 0)
  ret = -EINVAL;
 return ret;
}
