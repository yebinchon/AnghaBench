
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpu_kms {TYPE_2__* hw_intr; } ;
struct TYPE_3__ {int (* disable_all_irqs ) (TYPE_2__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void dpu_disable_all_irqs(struct dpu_kms *dpu_kms)
{
 if (!dpu_kms || !dpu_kms->hw_intr ||
   !dpu_kms->hw_intr->ops.disable_all_irqs)
  return;

 dpu_kms->hw_intr->ops.disable_all_irqs(dpu_kms->hw_intr);
}
