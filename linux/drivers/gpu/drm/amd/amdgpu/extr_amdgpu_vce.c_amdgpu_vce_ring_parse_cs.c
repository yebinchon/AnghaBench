
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct amdgpu_ib {unsigned int length_dw; int sa_bo; int gpu_addr; } ;
struct amdgpu_cs_parser {TYPE_3__* adev; TYPE_1__* job; } ;
struct TYPE_5__ {size_t* img_size; int * handles; } ;
struct TYPE_6__ {TYPE_2__ vce; int asic_type; } ;
struct TYPE_4__ {int * vm; struct amdgpu_ib* ibs; } ;


 int AMDGPU_MAX_VCE_HANDLES ;



 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int ENOENT ;
 int amdgpu_get_ib_value (struct amdgpu_cs_parser*,size_t,unsigned int) ;
 int amdgpu_sa_bo_gpu_addr (int ) ;
 int amdgpu_vce_cs_reloc (struct amdgpu_cs_parser*,size_t,unsigned int,unsigned int,size_t,unsigned int) ;
 int amdgpu_vce_validate_bo (struct amdgpu_cs_parser*,size_t,unsigned int,unsigned int,int,unsigned int) ;
 int amdgpu_vce_validate_handle (struct amdgpu_cs_parser*,size_t,size_t*) ;
 int atomic_set (int *,int ) ;

int amdgpu_vce_ring_parse_cs(struct amdgpu_cs_parser *p, uint32_t ib_idx)
{
 struct amdgpu_ib *ib = &p->job->ibs[ib_idx];
 unsigned fb_idx = 0, bs_idx = 0;
 int session_idx = -1;
 uint32_t destroyed = 0;
 uint32_t created = 0;
 uint32_t allocated = 0;
 uint32_t tmp, handle = 0;
 uint32_t *size = &tmp;
 unsigned idx;
 int i, r = 0;

 p->job->vm = ((void*)0);
 ib->gpu_addr = amdgpu_sa_bo_gpu_addr(ib->sa_bo);

 for (idx = 0; idx < ib->length_dw;) {
  uint32_t len = amdgpu_get_ib_value(p, ib_idx, idx);
  uint32_t cmd = amdgpu_get_ib_value(p, ib_idx, idx + 1);

  if ((len < 8) || (len & 3)) {
   DRM_ERROR("invalid VCE command length (%d)!\n", len);
   r = -EINVAL;
   goto out;
  }

  switch (cmd) {
  case 0x00000002:
   fb_idx = amdgpu_get_ib_value(p, ib_idx, idx + 6);
   bs_idx = amdgpu_get_ib_value(p, ib_idx, idx + 7);
   break;

  case 0x03000001:
   r = amdgpu_vce_validate_bo(p, ib_idx, idx + 10,
         idx + 9, 0, 0);
   if (r)
    goto out;

   r = amdgpu_vce_validate_bo(p, ib_idx, idx + 12,
         idx + 11, 0, 0);
   if (r)
    goto out;
   break;

  case 0x05000001:
   r = amdgpu_vce_validate_bo(p, ib_idx, idx + 3,
         idx + 2, 0, 0);
   if (r)
    goto out;
   break;

  case 0x05000004:
   tmp = amdgpu_get_ib_value(p, ib_idx, idx + 4);
   r = amdgpu_vce_validate_bo(p, ib_idx, idx + 3, idx + 2,
         tmp, bs_idx);
   if (r)
    goto out;
   break;

  case 0x05000005:
   r = amdgpu_vce_validate_bo(p, ib_idx, idx + 3, idx + 2,
         4096, fb_idx);
   if (r)
    goto out;
   break;

  case 0x0500000d:
   r = amdgpu_vce_validate_bo(p, ib_idx, idx + 3,
       idx + 2, 0, 0);
   if (r)
    goto out;

   r = amdgpu_vce_validate_bo(p, ib_idx, idx + 8,
       idx + 7, 0, 0);
   if (r)
    goto out;
   break;
  }

  idx += len / 4;
 }

 for (idx = 0; idx < ib->length_dw;) {
  uint32_t len = amdgpu_get_ib_value(p, ib_idx, idx);
  uint32_t cmd = amdgpu_get_ib_value(p, ib_idx, idx + 1);

  switch (cmd) {
  case 0x00000001:
   handle = amdgpu_get_ib_value(p, ib_idx, idx + 2);
   session_idx = amdgpu_vce_validate_handle(p, handle,
         &allocated);
   if (session_idx < 0) {
    r = session_idx;
    goto out;
   }
   size = &p->adev->vce.img_size[session_idx];
   break;

  case 0x00000002:
   fb_idx = amdgpu_get_ib_value(p, ib_idx, idx + 6);
   bs_idx = amdgpu_get_ib_value(p, ib_idx, idx + 7);
   break;

  case 0x01000001:
   created |= 1 << session_idx;
   if (destroyed & (1 << session_idx)) {
    destroyed &= ~(1 << session_idx);
    allocated |= 1 << session_idx;

   } else if (!(allocated & (1 << session_idx))) {
    DRM_ERROR("Handle already in use!\n");
    r = -EINVAL;
    goto out;
   }

   *size = amdgpu_get_ib_value(p, ib_idx, idx + 8) *
    amdgpu_get_ib_value(p, ib_idx, idx + 10) *
    8 * 3 / 2;
   break;

  case 0x04000001:
  case 0x04000002:
  case 0x04000005:
  case 0x04000007:
  case 0x04000008:
  case 0x04000009:
  case 0x05000002:
  case 0x05000009:
   break;

  case 0x0500000c:
   switch (p->adev->asic_type) {




   case 130:
    break;
   default:
    r = -EINVAL;
    goto out;
   }
   break;

  case 0x03000001:
   r = amdgpu_vce_cs_reloc(p, ib_idx, idx + 10, idx + 9,
      *size, 0);
   if (r)
    goto out;

   r = amdgpu_vce_cs_reloc(p, ib_idx, idx + 12, idx + 11,
      *size / 3, 0);
   if (r)
    goto out;
   break;

  case 0x02000001:
   destroyed |= 1 << session_idx;
   break;

  case 0x05000001:
   r = amdgpu_vce_cs_reloc(p, ib_idx, idx + 3, idx + 2,
      *size * 2, 0);
   if (r)
    goto out;
   break;

  case 0x05000004:
   tmp = amdgpu_get_ib_value(p, ib_idx, idx + 4);
   r = amdgpu_vce_cs_reloc(p, ib_idx, idx + 3, idx + 2,
      tmp, bs_idx);
   if (r)
    goto out;
   break;

  case 0x05000005:
   r = amdgpu_vce_cs_reloc(p, ib_idx, idx + 3, idx + 2,
      4096, fb_idx);
   if (r)
    goto out;
   break;

  case 0x0500000d:
   r = amdgpu_vce_cs_reloc(p, ib_idx, idx + 3,
       idx + 2, *size, 0);
   if (r)
    goto out;

   r = amdgpu_vce_cs_reloc(p, ib_idx, idx + 8,
       idx + 7, *size / 12, 0);
   if (r)
    goto out;
   break;

  default:
   DRM_ERROR("invalid VCE command (0x%x)!\n", cmd);
   r = -EINVAL;
   goto out;
  }

  if (session_idx == -1) {
   DRM_ERROR("no session command at start of IB\n");
   r = -EINVAL;
   goto out;
  }

  idx += len / 4;
 }

 if (allocated & ~created) {
  DRM_ERROR("New session without create command!\n");
  r = -ENOENT;
 }

out:
 if (!r) {

  tmp = destroyed;
 } else {

  tmp = allocated;
 }

 for (i = 0; i < AMDGPU_MAX_VCE_HANDLES; ++i)
  if (tmp & (1 << i))
   atomic_set(&p->adev->vce.handles[i], 0);

 return r;
}
