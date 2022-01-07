
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int u64 ;
struct amdgpu_uvd_cs_ctx {int data1; int ib_idx; int parser; int data0; } ;


 scalar_t__ amdgpu_get_ib_value (int ,int ,int ) ;

__attribute__((used)) static u64 amdgpu_uvd_get_addr_from_ctx(struct amdgpu_uvd_cs_ctx *ctx)
{
 uint32_t lo, hi;
 uint64_t addr;

 lo = amdgpu_get_ib_value(ctx->parser, ctx->ib_idx, ctx->data0);
 hi = amdgpu_get_ib_value(ctx->parser, ctx->ib_idx, ctx->data1);
 addr = ((uint64_t)lo) | (((uint64_t)hi) << 32);

 return addr;
}
