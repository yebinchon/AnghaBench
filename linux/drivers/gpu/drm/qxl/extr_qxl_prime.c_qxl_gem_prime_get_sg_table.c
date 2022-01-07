
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int dummy; } ;
struct drm_gem_object {int dummy; } ;


 int ENOSYS ;
 struct sg_table* ERR_PTR (int ) ;

struct sg_table *qxl_gem_prime_get_sg_table(struct drm_gem_object *obj)
{
 return ERR_PTR(-ENOSYS);
}
