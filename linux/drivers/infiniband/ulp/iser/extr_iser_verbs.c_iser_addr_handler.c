
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rdma_cm_id {scalar_t__ context; } ;
struct iser_device {TYPE_2__* ib_device; } ;
struct ib_conn {int pi_support; struct iser_device* device; } ;
struct iser_conn {scalar_t__ state; struct ib_conn ib_conn; } ;
struct TYPE_3__ {int device_cap_flags; } ;
struct TYPE_4__ {int dev; TYPE_1__ attrs; } ;


 int IB_DEVICE_INTEGRITY_HANDOVER ;
 scalar_t__ ISER_CONN_PENDING ;
 int dev_name (int *) ;
 int iser_calc_scsi_params (struct iser_conn*,int ) ;
 int iser_connect_error (struct rdma_cm_id*) ;
 struct iser_device* iser_device_find_by_ib_device (struct rdma_cm_id*) ;
 int iser_err (char*,...) ;
 int iser_max_sectors ;
 scalar_t__ iser_pi_enable ;
 int iser_warn (char*,int ) ;
 int rdma_resolve_route (struct rdma_cm_id*,int) ;

__attribute__((used)) static void iser_addr_handler(struct rdma_cm_id *cma_id)
{
 struct iser_device *device;
 struct iser_conn *iser_conn;
 struct ib_conn *ib_conn;
 int ret;

 iser_conn = (struct iser_conn *)cma_id->context;
 if (iser_conn->state != ISER_CONN_PENDING)

  return;

 ib_conn = &iser_conn->ib_conn;
 device = iser_device_find_by_ib_device(cma_id);
 if (!device) {
  iser_err("device lookup/creation failed\n");
  iser_connect_error(cma_id);
  return;
 }

 ib_conn->device = device;


 if (iser_pi_enable) {
  if (!(device->ib_device->attrs.device_cap_flags &
        IB_DEVICE_INTEGRITY_HANDOVER)) {
   iser_warn("T10-PI requested but not supported on %s, "
      "continue without T10-PI\n",
      dev_name(&ib_conn->device->ib_device->dev));
   ib_conn->pi_support = 0;
  } else {
   ib_conn->pi_support = 1;
  }
 }

 iser_calc_scsi_params(iser_conn, iser_max_sectors);

 ret = rdma_resolve_route(cma_id, 1000);
 if (ret) {
  iser_err("resolve route failed: %d\n", ret);
  iser_connect_error(cma_id);
  return;
 }
}
