
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cb_lock; int * irq_cb_tbl; int * enable_counts; int irq_counts; } ;
struct dpu_kms {TYPE_2__ irq_obj; TYPE_3__* hw_intr; } ;
struct TYPE_4__ {int (* enable_irq ) (TYPE_3__*,int) ;} ;
struct TYPE_6__ {int irq_idx_tbl_size; TYPE_1__ ops; } ;


 int DPU_DEBUG (char*,int,int) ;
 int DPU_ERROR (char*,...) ;
 int DRM_DEBUG_KMS (char*,int,int) ;
 int EINVAL ;
 int atomic_inc_return (int *) ;
 int atomic_read (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*,int) ;
 int trace_dpu_core_irq_enable_idx (int,int) ;

__attribute__((used)) static int _dpu_core_irq_enable(struct dpu_kms *dpu_kms, int irq_idx)
{
 unsigned long irq_flags;
 int ret = 0, enable_count;

 if (!dpu_kms || !dpu_kms->hw_intr ||
   !dpu_kms->irq_obj.enable_counts ||
   !dpu_kms->irq_obj.irq_counts) {
  DPU_ERROR("invalid params\n");
  return -EINVAL;
 }

 if (irq_idx < 0 || irq_idx >= dpu_kms->hw_intr->irq_idx_tbl_size) {
  DPU_ERROR("invalid IRQ index: [%d]\n", irq_idx);
  return -EINVAL;
 }

 enable_count = atomic_read(&dpu_kms->irq_obj.enable_counts[irq_idx]);
 DRM_DEBUG_KMS("irq_idx=%d enable_count=%d\n", irq_idx, enable_count);
 trace_dpu_core_irq_enable_idx(irq_idx, enable_count);

 if (atomic_inc_return(&dpu_kms->irq_obj.enable_counts[irq_idx]) == 1) {
  ret = dpu_kms->hw_intr->ops.enable_irq(
    dpu_kms->hw_intr,
    irq_idx);
  if (ret)
   DPU_ERROR("Fail to enable IRQ for irq_idx:%d\n",
     irq_idx);

  DPU_DEBUG("irq_idx=%d ret=%d\n", irq_idx, ret);

  spin_lock_irqsave(&dpu_kms->irq_obj.cb_lock, irq_flags);

  if (list_empty(&dpu_kms->irq_obj.irq_cb_tbl[irq_idx]))
   DPU_ERROR("irq_idx=%d enabled with no callback\n",
     irq_idx);
  spin_unlock_irqrestore(&dpu_kms->irq_obj.cb_lock, irq_flags);
 }

 return ret;
}
