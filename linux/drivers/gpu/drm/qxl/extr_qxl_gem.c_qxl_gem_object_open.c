
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;



int qxl_gem_object_open(struct drm_gem_object *obj, struct drm_file *file_priv)
{
 return 0;
}
