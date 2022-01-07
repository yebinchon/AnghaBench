
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int (* get_halt_ctrl ) (struct dpu_hw_vbif*,int ) ;} ;
struct dpu_hw_vbif {scalar_t__ idx; TYPE_2__ ops; TYPE_1__* cap; } ;
typedef int ktime_t ;
struct TYPE_3__ {int xin_halt_timeout; } ;


 int DPU_DEBUG (char*,scalar_t__,int ) ;
 int DPU_ERROR (char*,int,...) ;
 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ VBIF_0 ;
 int ktime_add_us (int ,int ) ;
 scalar_t__ ktime_compare_safe (int ,int ) ;
 int ktime_get () ;
 int stub1 (struct dpu_hw_vbif*,int ) ;
 int stub2 (struct dpu_hw_vbif*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int _dpu_vbif_wait_for_xin_halt(struct dpu_hw_vbif *vbif, u32 xin_id)
{
 ktime_t timeout;
 bool status;
 int rc;

 if (!vbif || !vbif->cap || !vbif->ops.get_halt_ctrl) {
  DPU_ERROR("invalid arguments vbif %d\n", vbif != 0);
  return -EINVAL;
 }

 timeout = ktime_add_us(ktime_get(), vbif->cap->xin_halt_timeout);
 for (;;) {
  status = vbif->ops.get_halt_ctrl(vbif, xin_id);
  if (status)
   break;
  if (ktime_compare_safe(ktime_get(), timeout) > 0) {
   status = vbif->ops.get_halt_ctrl(vbif, xin_id);
   break;
  }
  usleep_range(501, 1000);
 }

 if (!status) {
  rc = -ETIMEDOUT;
  DPU_ERROR("VBIF %d client %d not halting. TIMEDOUT.\n",
    vbif->idx - VBIF_0, xin_id);
 } else {
  rc = 0;
  DPU_DEBUG("VBIF %d client %d is halted\n",
    vbif->idx - VBIF_0, xin_id);
 }

 return rc;
}
