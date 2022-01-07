
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vma_offset_manager {int dummy; } ;
struct drm_device {struct drm_vma_offset_manager* vma_offset_manager; int object_name_idr; int object_name_lock; } ;


 int DRM_ERROR (char*) ;
 int DRM_FILE_PAGE_OFFSET_SIZE ;
 int DRM_FILE_PAGE_OFFSET_START ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_vma_offset_manager_init (struct drm_vma_offset_manager*,int ,int ) ;
 int idr_init_base (int *,int) ;
 struct drm_vma_offset_manager* kzalloc (int,int ) ;
 int mutex_init (int *) ;

int
drm_gem_init(struct drm_device *dev)
{
 struct drm_vma_offset_manager *vma_offset_manager;

 mutex_init(&dev->object_name_lock);
 idr_init_base(&dev->object_name_idr, 1);

 vma_offset_manager = kzalloc(sizeof(*vma_offset_manager), GFP_KERNEL);
 if (!vma_offset_manager) {
  DRM_ERROR("out of memory\n");
  return -ENOMEM;
 }

 dev->vma_offset_manager = vma_offset_manager;
 drm_vma_offset_manager_init(vma_offset_manager,
        DRM_FILE_PAGE_OFFSET_START,
        DRM_FILE_PAGE_OFFSET_SIZE);

 return 0;
}
