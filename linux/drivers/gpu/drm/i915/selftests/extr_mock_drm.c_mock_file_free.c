
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct drm_file* private_data; } ;
struct drm_i915_private {int dummy; } ;
struct drm_file {int dummy; } ;


 int drm_release (int *,struct file*) ;

void mock_file_free(struct drm_i915_private *i915, struct drm_file *file)
{
 struct file filp = { .private_data = file };

 drm_release(((void*)0), &filp);
}
