
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_error_object {int page_count; void** pages; } ;
struct compress {int pool; } ;


 int ALLOW_FAIL ;
 int ENOMEM ;
 int PAGE_SIZE ;
 int i915_memcpy_from_wc (void*,void*,int ) ;
 int memcpy (void*,void*,int ) ;
 void* pool_alloc (int *,int ) ;

__attribute__((used)) static int compress_page(struct compress *c,
    void *src,
    struct drm_i915_error_object *dst)
{
 void *ptr;

 ptr = pool_alloc(&c->pool, ALLOW_FAIL);
 if (!ptr)
  return -ENOMEM;

 if (!i915_memcpy_from_wc(ptr, src, PAGE_SIZE))
  memcpy(ptr, src, PAGE_SIZE);
 dst->pages[dst->page_count++] = ptr;

 return 0;
}
