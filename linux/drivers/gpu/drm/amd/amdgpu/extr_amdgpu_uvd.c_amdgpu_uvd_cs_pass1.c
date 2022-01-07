
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct amdgpu_uvd_cs_ctx {int idx; int ib_idx; TYPE_3__* parser; } ;
struct amdgpu_bo_va_mapping {int dummy; } ;
struct amdgpu_bo {int placement; int tbo; } ;
struct TYPE_7__ {TYPE_2__* adev; } ;
struct TYPE_5__ {int address_64_bit; } ;
struct TYPE_6__ {TYPE_1__ uvd; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int DRM_ERROR (char*,int ) ;
 int amdgpu_bo_placement_from_domain (struct amdgpu_bo*,int) ;
 int amdgpu_cs_find_mapping (TYPE_3__*,int ,struct amdgpu_bo**,struct amdgpu_bo_va_mapping**) ;
 int amdgpu_get_ib_value (TYPE_3__*,int ,int ) ;
 int amdgpu_uvd_force_into_uvd_segment (struct amdgpu_bo*) ;
 int amdgpu_uvd_get_addr_from_ctx (struct amdgpu_uvd_cs_ctx*) ;
 int ttm_bo_validate (int *,int *,struct ttm_operation_ctx*) ;

__attribute__((used)) static int amdgpu_uvd_cs_pass1(struct amdgpu_uvd_cs_ctx *ctx)
{
 struct ttm_operation_ctx tctx = { 0, 0 };
 struct amdgpu_bo_va_mapping *mapping;
 struct amdgpu_bo *bo;
 uint32_t cmd;
 uint64_t addr = amdgpu_uvd_get_addr_from_ctx(ctx);
 int r = 0;

 r = amdgpu_cs_find_mapping(ctx->parser, addr, &bo, &mapping);
 if (r) {
  DRM_ERROR("Can't find BO for addr 0x%08Lx\n", addr);
  return r;
 }

 if (!ctx->parser->adev->uvd.address_64_bit) {

  cmd = amdgpu_get_ib_value(ctx->parser, ctx->ib_idx, ctx->idx) >> 1;
  if (cmd == 0x0 || cmd == 0x3) {

   uint32_t domain = AMDGPU_GEM_DOMAIN_VRAM;
   amdgpu_bo_placement_from_domain(bo, domain);
  }
  amdgpu_uvd_force_into_uvd_segment(bo);

  r = ttm_bo_validate(&bo->tbo, &bo->placement, &tctx);
 }

 return r;
}
