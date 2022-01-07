
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gem_vma {int list; } ;


 int kfree (struct msm_gem_vma*) ;
 int list_del (int *) ;

__attribute__((used)) static void del_vma(struct msm_gem_vma *vma)
{
 if (!vma)
  return;

 list_del(&vma->list);
 kfree(vma);
}
