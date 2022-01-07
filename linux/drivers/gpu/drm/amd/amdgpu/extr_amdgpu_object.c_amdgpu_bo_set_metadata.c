
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct amdgpu_bo {scalar_t__ metadata_size; int * metadata; int metadata_flags; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 void* kmemdup (void*,scalar_t__,int ) ;

int amdgpu_bo_set_metadata (struct amdgpu_bo *bo, void *metadata,
       uint32_t metadata_size, uint64_t flags)
{
 void *buffer;

 if (!metadata_size) {
  if (bo->metadata_size) {
   kfree(bo->metadata);
   bo->metadata = ((void*)0);
   bo->metadata_size = 0;
  }
  return 0;
 }

 if (metadata == ((void*)0))
  return -EINVAL;

 buffer = kmemdup(metadata, metadata_size, GFP_KERNEL);
 if (buffer == ((void*)0))
  return -ENOMEM;

 kfree(bo->metadata);
 bo->metadata_flags = flags;
 bo->metadata = buffer;
 bo->metadata_size = metadata_size;

 return 0;
}
