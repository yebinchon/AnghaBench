
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct dpu_kms {TYPE_2__* hw_intr; } ;
typedef enum dpu_intr_type { ____Placeholder_dpu_intr_type } dpu_intr_type ;
struct TYPE_3__ {int (* irq_idx_lookup ) (int,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int EINVAL ;
 int stub1 (int,int ) ;

int dpu_core_irq_idx_lookup(struct dpu_kms *dpu_kms,
  enum dpu_intr_type intr_type, u32 instance_idx)
{
 if (!dpu_kms || !dpu_kms->hw_intr ||
   !dpu_kms->hw_intr->ops.irq_idx_lookup)
  return -EINVAL;

 return dpu_kms->hw_intr->ops.irq_idx_lookup(intr_type,
   instance_idx);
}
