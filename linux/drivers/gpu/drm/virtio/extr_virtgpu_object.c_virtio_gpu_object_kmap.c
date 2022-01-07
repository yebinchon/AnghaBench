
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_pages; } ;
struct virtio_gpu_object {int kmap; int vmap; TYPE_1__ tbo; } ;


 int WARN_ON (int ) ;
 int ttm_bo_kmap (TYPE_1__*,int ,int ,int *) ;
 int ttm_kmap_obj_virtual (int *,int*) ;

int virtio_gpu_object_kmap(struct virtio_gpu_object *bo)
{
 bool is_iomem;
 int r;

 WARN_ON(bo->vmap);

 r = ttm_bo_kmap(&bo->tbo, 0, bo->tbo.num_pages, &bo->kmap);
 if (r)
  return r;
 bo->vmap = ttm_kmap_obj_virtual(&bo->kmap, &is_iomem);
 return 0;
}
