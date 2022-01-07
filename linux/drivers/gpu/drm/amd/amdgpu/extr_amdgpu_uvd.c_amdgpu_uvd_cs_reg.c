
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_uvd_cs_ctx {size_t ib_idx; scalar_t__ idx; int count; int reg; scalar_t__ data0; scalar_t__ data1; TYPE_2__* parser; } ;
struct amdgpu_ib {scalar_t__ length_dw; } ;
struct TYPE_4__ {TYPE_1__* job; } ;
struct TYPE_3__ {struct amdgpu_ib* ibs; } ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;






__attribute__((used)) static int amdgpu_uvd_cs_reg(struct amdgpu_uvd_cs_ctx *ctx,
        int (*cb)(struct amdgpu_uvd_cs_ctx *ctx))
{
 struct amdgpu_ib *ib = &ctx->parser->job->ibs[ctx->ib_idx];
 int i, r;

 ctx->idx++;
 for (i = 0; i <= ctx->count; ++i) {
  unsigned reg = ctx->reg + i;

  if (ctx->idx >= ib->length_dw) {
   DRM_ERROR("Register command after end of CS!\n");
   return -EINVAL;
  }

  switch (reg) {
  case 130:
   ctx->data0 = ctx->idx;
   break;
  case 129:
   ctx->data1 = ctx->idx;
   break;
  case 131:
   r = cb(ctx);
   if (r)
    return r;
   break;
  case 132:
  case 128:
   break;
  default:
   DRM_ERROR("Invalid reg 0x%X!\n", reg);
   return -EINVAL;
  }
  ctx->idx++;
 }
 return 0;
}
