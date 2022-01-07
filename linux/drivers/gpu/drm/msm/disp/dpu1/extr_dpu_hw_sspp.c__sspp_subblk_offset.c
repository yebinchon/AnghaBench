
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int base; } ;
struct TYPE_7__ {int base; } ;
struct TYPE_6__ {int base; } ;
struct dpu_sspp_sub_blks {TYPE_4__ csc_blk; TYPE_3__ scaler_blk; TYPE_2__ src_blk; } ;
struct dpu_hw_pipe {TYPE_1__* cap; } ;
struct TYPE_5__ {struct dpu_sspp_sub_blks* sblk; } ;
 int EINVAL ;

__attribute__((used)) static int _sspp_subblk_offset(struct dpu_hw_pipe *ctx,
  int s_id,
  u32 *idx)
{
 int rc = 0;
 const struct dpu_sspp_sub_blks *sblk = ctx->cap->sblk;

 if (!ctx)
  return -EINVAL;

 switch (s_id) {
 case 128:
  *idx = sblk->src_blk.base;
  break;
 case 131:
 case 130:
 case 129:
  *idx = sblk->scaler_blk.base;
  break;
 case 133:
 case 132:
  *idx = sblk->csc_blk.base;
  break;
 default:
  rc = -EINVAL;
 }

 return rc;
}
