
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int num_pages; } ;
struct vmw_buffer_object {int map; struct ttm_buffer_object base; } ;


 int DRM_ERROR (char*,int) ;
 int ttm_bo_kmap (struct ttm_buffer_object*,int ,int ,int *) ;
 void* ttm_kmap_obj_virtual (int *,int*) ;

void *vmw_bo_map_and_cache(struct vmw_buffer_object *vbo)
{
 struct ttm_buffer_object *bo = &vbo->base;
 bool not_used;
 void *virtual;
 int ret;

 virtual = ttm_kmap_obj_virtual(&vbo->map, &not_used);
 if (virtual)
  return virtual;

 ret = ttm_bo_kmap(bo, 0, bo->num_pages, &vbo->map);
 if (ret)
  DRM_ERROR("Buffer object map failed: %d.\n", ret);

 return ttm_kmap_obj_virtual(&vbo->map, &not_used);
}
