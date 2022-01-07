
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_mem_type_manager {void* default_caching; void* available_caching; void* flags; int * func; } ;
struct ttm_bo_device {int dummy; } ;


 int DRM_ERROR (char*,unsigned int) ;
 int EINVAL ;
 void* TTM_MEMTYPE_FLAG_MAPPABLE ;
 void* TTM_PL_FLAG_CACHED ;
 void* TTM_PL_MASK_CACHING ;


 int virtio_gpu_bo_manager_func ;

__attribute__((used)) static int virtio_gpu_init_mem_type(struct ttm_bo_device *bdev, uint32_t type,
        struct ttm_mem_type_manager *man)
{
 switch (type) {
 case 129:

  man->flags = TTM_MEMTYPE_FLAG_MAPPABLE;
  man->available_caching = TTM_PL_MASK_CACHING;
  man->default_caching = TTM_PL_FLAG_CACHED;
  break;
 case 128:
  man->func = &virtio_gpu_bo_manager_func;
  man->flags = TTM_MEMTYPE_FLAG_MAPPABLE;
  man->available_caching = TTM_PL_MASK_CACHING;
  man->default_caching = TTM_PL_FLAG_CACHED;
  break;
 default:
  DRM_ERROR("Unsupported memory type %u\n", (unsigned int)type);
  return -EINVAL;
 }
 return 0;
}
