
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* trigger_start ) (struct dpu_encoder_phys*) ;} ;
struct dpu_encoder_phys {scalar_t__ enable_state; TYPE_1__ ops; int hw_pp; } ;


 scalar_t__ DPU_ENC_DISABLED ;
 int DPU_ERROR (char*) ;
 int stub1 (struct dpu_encoder_phys*) ;

__attribute__((used)) static void _dpu_encoder_trigger_start(struct dpu_encoder_phys *phys)
{
 if (!phys) {
  DPU_ERROR("invalid argument(s)\n");
  return;
 }

 if (!phys->hw_pp) {
  DPU_ERROR("invalid pingpong hw\n");
  return;
 }

 if (phys->ops.trigger_start && phys->enable_state != DPU_ENC_DISABLED)
  phys->ops.trigger_start(phys);
}
