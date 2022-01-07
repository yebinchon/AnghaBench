
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct amdgpu_uvd_cs_ctx {TYPE_1__* parser; int buf_sizes; } ;
struct TYPE_4__ {int max_handles; int * handles; int * filp; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct amdgpu_bo {int dummy; } ;
typedef scalar_t__ int32_t ;
struct TYPE_3__ {int filp; struct amdgpu_device* adev; } ;


 int BUG () ;
 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int ENOENT ;
 int ENOSPC ;
 long amdgpu_bo_kmap (struct amdgpu_bo*,void**) ;
 int amdgpu_bo_kunmap (struct amdgpu_bo*) ;
 long amdgpu_uvd_cs_msg_decode (struct amdgpu_device*,scalar_t__*,int ) ;
 int atomic_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static int amdgpu_uvd_cs_msg(struct amdgpu_uvd_cs_ctx *ctx,
        struct amdgpu_bo *bo, unsigned offset)
{
 struct amdgpu_device *adev = ctx->parser->adev;
 int32_t *msg, msg_type, handle;
 void *ptr;
 long r;
 int i;

 if (offset & 0x3F) {
  DRM_ERROR("UVD messages must be 64 byte aligned!\n");
  return -EINVAL;
 }

 r = amdgpu_bo_kmap(bo, &ptr);
 if (r) {
  DRM_ERROR("Failed mapping the UVD) message (%ld)!\n", r);
  return r;
 }

 msg = ptr + offset;

 msg_type = msg[1];
 handle = msg[2];

 if (handle == 0) {
  DRM_ERROR("Invalid UVD handle!\n");
  return -EINVAL;
 }

 switch (msg_type) {
 case 0:

  amdgpu_bo_kunmap(bo);


  for (i = 0; i < adev->uvd.max_handles; ++i) {
   if (atomic_read(&adev->uvd.handles[i]) == handle) {
    DRM_ERROR(")Handle 0x%x already in use!\n",
       handle);
    return -EINVAL;
   }

   if (!atomic_cmpxchg(&adev->uvd.handles[i], 0, handle)) {
    adev->uvd.filp[i] = ctx->parser->filp;
    return 0;
   }
  }

  DRM_ERROR("No more free UVD handles!\n");
  return -ENOSPC;

 case 1:

  r = amdgpu_uvd_cs_msg_decode(adev, msg, ctx->buf_sizes);
  amdgpu_bo_kunmap(bo);
  if (r)
   return r;


  for (i = 0; i < adev->uvd.max_handles; ++i) {
   if (atomic_read(&adev->uvd.handles[i]) == handle) {
    if (adev->uvd.filp[i] != ctx->parser->filp) {
     DRM_ERROR("UVD handle collision detected!\n");
     return -EINVAL;
    }
    return 0;
   }
  }

  DRM_ERROR("Invalid UVD handle 0x%x!\n", handle);
  return -ENOENT;

 case 2:

  for (i = 0; i < adev->uvd.max_handles; ++i)
   atomic_cmpxchg(&adev->uvd.handles[i], handle, 0);
  amdgpu_bo_kunmap(bo);
  return 0;

 default:
  DRM_ERROR("Illegal UVD message type (%d)!\n", msg_type);
  return -EINVAL;
 }
 BUG();
 return -EINVAL;
}
