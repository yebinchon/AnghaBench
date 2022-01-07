
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct etnaviv_gem_object {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int etnaviv_gem_userptr_mmap_obj(struct etnaviv_gem_object *etnaviv_obj,
  struct vm_area_struct *vma)
{
 return -EINVAL;
}
