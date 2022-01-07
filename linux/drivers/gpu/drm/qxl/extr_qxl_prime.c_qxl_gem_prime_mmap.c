
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int ENOSYS ;

int qxl_gem_prime_mmap(struct drm_gem_object *obj,
         struct vm_area_struct *area)
{
 return -ENOSYS;
}
