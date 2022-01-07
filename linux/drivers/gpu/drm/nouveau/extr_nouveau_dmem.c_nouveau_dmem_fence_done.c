
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_fence {int dummy; } ;


 int nouveau_fence_unref (struct nouveau_fence**) ;
 int nouveau_fence_wait (struct nouveau_fence*,int,int) ;

__attribute__((used)) static void nouveau_dmem_fence_done(struct nouveau_fence **fence)
{
 if (fence) {
  nouveau_fence_wait(*fence, 1, 0);
  nouveau_fence_unref(fence);
 } else {




 }
}
