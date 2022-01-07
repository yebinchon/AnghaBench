
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_vma {int fence; } ;


 int nouveau_fence_unref (int *) ;
 int nouveau_vma_del (struct nouveau_vma**) ;

__attribute__((used)) static void
nouveau_gem_object_delete(struct nouveau_vma *vma)
{
 nouveau_fence_unref(&vma->fence);
 nouveau_vma_del(&vma);
}
