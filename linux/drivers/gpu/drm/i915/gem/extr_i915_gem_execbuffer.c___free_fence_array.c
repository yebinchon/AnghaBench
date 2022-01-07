
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_syncobj {int dummy; } ;


 int drm_syncobj_put (int ) ;
 int kvfree (struct drm_syncobj**) ;
 int ptr_mask_bits (struct drm_syncobj*,int) ;

__attribute__((used)) static void
__free_fence_array(struct drm_syncobj **fences, unsigned int n)
{
 while (n--)
  drm_syncobj_put(ptr_mask_bits(fences[n], 2));
 kvfree(fences);
}
