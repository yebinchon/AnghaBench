
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t uint32_t ;
struct amdgpu_bo {size_t metadata_size; int metadata_flags; int metadata; } ;


 int EINVAL ;
 int memcpy (void*,int ,size_t) ;

int amdgpu_bo_get_metadata(struct amdgpu_bo *bo, void *buffer,
      size_t buffer_size, uint32_t *metadata_size,
      uint64_t *flags)
{
 if (!buffer && !metadata_size)
  return -EINVAL;

 if (buffer) {
  if (buffer_size < bo->metadata_size)
   return -EINVAL;

  if (bo->metadata_size)
   memcpy(buffer, bo->metadata, bo->metadata_size);
 }

 if (metadata_size)
  *metadata_size = bo->metadata_size;
 if (flags)
  *flags = bo->metadata_flags;

 return 0;
}
