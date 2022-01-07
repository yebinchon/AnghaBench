
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct amdgpu_uvd_cs_ctx {unsigned int* buf_sizes; size_t ib_idx; int has_msg_cmd; struct amdgpu_cs_parser* parser; } ;
struct amdgpu_ib {int length_dw; int sa_bo; int gpu_addr; } ;
struct amdgpu_cs_parser {TYPE_3__* adev; TYPE_1__* job; } ;
struct TYPE_5__ {int address_64_bit; } ;
struct TYPE_6__ {TYPE_2__ uvd; } ;
struct TYPE_4__ {int * vm; struct amdgpu_ib* ibs; } ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int amdgpu_sa_bo_gpu_addr (int ) ;
 int amdgpu_uvd_cs_packets (struct amdgpu_uvd_cs_ctx*,int ) ;
 int amdgpu_uvd_cs_pass1 ;
 int amdgpu_uvd_cs_pass2 ;

int amdgpu_uvd_ring_parse_cs(struct amdgpu_cs_parser *parser, uint32_t ib_idx)
{
 struct amdgpu_uvd_cs_ctx ctx = {};
 unsigned buf_sizes[] = {
  [0x00000000] = 2048,
  [0x00000001] = 0xFFFFFFFF,
  [0x00000002] = 0xFFFFFFFF,
  [0x00000003] = 2048,
  [0x00000004] = 0xFFFFFFFF,
 };
 struct amdgpu_ib *ib = &parser->job->ibs[ib_idx];
 int r;

 parser->job->vm = ((void*)0);
 ib->gpu_addr = amdgpu_sa_bo_gpu_addr(ib->sa_bo);

 if (ib->length_dw % 16) {
  DRM_ERROR("UVD IB length (%d) not 16 dwords aligned!\n",
     ib->length_dw);
  return -EINVAL;
 }

 ctx.parser = parser;
 ctx.buf_sizes = buf_sizes;
 ctx.ib_idx = ib_idx;


 if (!parser->adev->uvd.address_64_bit) {

  r = amdgpu_uvd_cs_packets(&ctx, amdgpu_uvd_cs_pass1);
  if (r)
   return r;
 }


 r = amdgpu_uvd_cs_packets(&ctx, amdgpu_uvd_cs_pass2);
 if (r)
  return r;

 if (!ctx.has_msg_cmd) {
  DRM_ERROR("UVD-IBs need a msg command!\n");
  return -EINVAL;
 }

 return 0;
}
