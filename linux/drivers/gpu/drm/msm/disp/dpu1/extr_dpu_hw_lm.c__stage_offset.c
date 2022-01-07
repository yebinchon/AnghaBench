
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpu_lm_sub_blks {int maxblendstages; int* blendstage_base; } ;
struct dpu_hw_mixer {TYPE_1__* cap; } ;
typedef enum dpu_stage { ____Placeholder_dpu_stage } dpu_stage ;
struct TYPE_2__ {struct dpu_lm_sub_blks* sblk; } ;


 int DPU_STAGE_0 ;
 int DPU_STAGE_BASE ;
 int EINVAL ;

__attribute__((used)) static inline int _stage_offset(struct dpu_hw_mixer *ctx, enum dpu_stage stage)
{
 const struct dpu_lm_sub_blks *sblk = ctx->cap->sblk;
 if (stage != DPU_STAGE_BASE && stage <= sblk->maxblendstages)
  return sblk->blendstage_base[stage - DPU_STAGE_0];

 return -EINVAL;
}
