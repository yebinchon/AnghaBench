
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udl_gem_object {int * pages; struct sg_table* sg; } ;
struct sg_table {int dummy; } ;
struct page {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 int drm_prime_sg_to_page_addr_arrays (struct sg_table*,int *,int *,int) ;
 int * kvmalloc_array (int,int,int ) ;
 struct udl_gem_object* udl_gem_alloc_object (struct drm_device*,int) ;

__attribute__((used)) static int udl_prime_create(struct drm_device *dev,
       size_t size,
       struct sg_table *sg,
       struct udl_gem_object **obj_p)
{
 struct udl_gem_object *obj;
 int npages;

 npages = size / PAGE_SIZE;

 *obj_p = ((void*)0);
 obj = udl_gem_alloc_object(dev, npages * PAGE_SIZE);
 if (!obj)
  return -ENOMEM;

 obj->sg = sg;
 obj->pages = kvmalloc_array(npages, sizeof(struct page *), GFP_KERNEL);
 if (obj->pages == ((void*)0)) {
  DRM_ERROR("obj pages is NULL %d\n", npages);
  return -ENOMEM;
 }

 drm_prime_sg_to_page_addr_arrays(sg, obj->pages, ((void*)0), npages);

 *obj_p = obj;
 return 0;
}
