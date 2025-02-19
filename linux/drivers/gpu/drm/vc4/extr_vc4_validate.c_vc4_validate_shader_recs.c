
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct vc4_exec_info {size_t shader_state_count; int * shader_state; } ;
struct drm_device {int dummy; } ;


 int validate_gl_shader_rec (struct drm_device*,struct vc4_exec_info*,int *) ;

int
vc4_validate_shader_recs(struct drm_device *dev,
    struct vc4_exec_info *exec)
{
 uint32_t i;
 int ret = 0;

 for (i = 0; i < exec->shader_state_count; i++) {
  ret = validate_gl_shader_rec(dev, exec, &exec->shader_state[i]);
  if (ret)
   return ret;
 }

 return ret;
}
