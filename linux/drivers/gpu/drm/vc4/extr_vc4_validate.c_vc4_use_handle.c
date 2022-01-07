
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct vc4_exec_info {int * bo_index; } ;
struct drm_gem_cma_object {int dummy; } ;


 struct drm_gem_cma_object* vc4_use_bo (struct vc4_exec_info*,int ) ;

__attribute__((used)) static struct drm_gem_cma_object *
vc4_use_handle(struct vc4_exec_info *exec, uint32_t gem_handles_packet_index)
{
 return vc4_use_bo(exec, exec->bo_index[gem_handles_packet_index]);
}
