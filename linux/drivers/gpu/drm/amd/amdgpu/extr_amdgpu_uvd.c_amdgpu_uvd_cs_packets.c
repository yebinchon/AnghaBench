
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_uvd_cs_ctx {size_t ib_idx; scalar_t__ idx; int count; int reg; TYPE_2__* parser; } ;
struct amdgpu_ib {scalar_t__ length_dw; } ;
struct TYPE_4__ {TYPE_1__* job; } ;
struct TYPE_3__ {struct amdgpu_ib* ibs; } ;


 int CP_PACKET0_GET_REG (int ) ;
 int CP_PACKET_GET_COUNT (int ) ;
 unsigned int CP_PACKET_GET_TYPE (int ) ;
 int DRM_ERROR (char*,unsigned int) ;
 int EINVAL ;


 int amdgpu_get_ib_value (TYPE_2__*,size_t,scalar_t__) ;
 int amdgpu_uvd_cs_reg (struct amdgpu_uvd_cs_ctx*,int (*) (struct amdgpu_uvd_cs_ctx*)) ;

__attribute__((used)) static int amdgpu_uvd_cs_packets(struct amdgpu_uvd_cs_ctx *ctx,
     int (*cb)(struct amdgpu_uvd_cs_ctx *ctx))
{
 struct amdgpu_ib *ib = &ctx->parser->job->ibs[ctx->ib_idx];
 int r;

 for (ctx->idx = 0 ; ctx->idx < ib->length_dw; ) {
  uint32_t cmd = amdgpu_get_ib_value(ctx->parser, ctx->ib_idx, ctx->idx);
  unsigned type = CP_PACKET_GET_TYPE(cmd);
  switch (type) {
  case 129:
   ctx->reg = CP_PACKET0_GET_REG(cmd);
   ctx->count = CP_PACKET_GET_COUNT(cmd);
   r = amdgpu_uvd_cs_reg(ctx, cb);
   if (r)
    return r;
   break;
  case 128:
   ++ctx->idx;
   break;
  default:
   DRM_ERROR("Unknown packet type %d !\n", type);
   return -EINVAL;
  }
 }
 return 0;
}
