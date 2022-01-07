
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vio_pfo_op {int hcall_err; } ;
struct vio_dev {int dev; } ;
struct nx_crypto_ctx {TYPE_1__* stats; } ;
struct TYPE_6__ {int pid; } ;
struct TYPE_5__ {struct vio_dev* viodev; } ;
struct TYPE_4__ {int last_error_pid; int last_error; int errors; int sync_ops; } ;


 int EBUSY ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 TYPE_3__* current ;
 int dev_dbg (int *,char*,int,int ) ;
 TYPE_2__ nx_driver ;
 int vio_h_cop_sync (struct vio_dev*,struct vio_pfo_op*) ;

int nx_hcall_sync(struct nx_crypto_ctx *nx_ctx,
    struct vio_pfo_op *op,
    u32 may_sleep)
{
 int rc, retries = 10;
 struct vio_dev *viodev = nx_driver.viodev;

 atomic_inc(&(nx_ctx->stats->sync_ops));

 do {
  rc = vio_h_cop_sync(viodev, op);
 } while (rc == -EBUSY && !may_sleep && retries--);

 if (rc) {
  dev_dbg(&viodev->dev, "vio_h_cop_sync failed: rc: %d "
   "hcall rc: %ld\n", rc, op->hcall_err);
  atomic_inc(&(nx_ctx->stats->errors));
  atomic_set(&(nx_ctx->stats->last_error), op->hcall_err);
  atomic_set(&(nx_ctx->stats->last_error_pid), current->pid);
 }

 return rc;
}
