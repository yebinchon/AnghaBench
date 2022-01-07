
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu_type {int resolution; int weight; int fence; void* high_gm_size; void* low_gm_size; } ;
struct intel_vgpu_creation_params {int primary; void* high_gm_sz; void* low_gm_sz; int resolution; int weight; int fence_sz; scalar_t__ handle; } ;
struct intel_vgpu {int dummy; } ;
struct intel_gvt {int lock; } ;


 void* BYTES_TO_MB (void*) ;
 int IS_ERR (struct intel_vgpu*) ;
 struct intel_vgpu* __intel_gvt_create_vgpu (struct intel_gvt*,struct intel_vgpu_creation_params*) ;
 int intel_gvt_update_vgpu_types (struct intel_gvt*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct intel_vgpu *intel_gvt_create_vgpu(struct intel_gvt *gvt,
    struct intel_vgpu_type *type)
{
 struct intel_vgpu_creation_params param;
 struct intel_vgpu *vgpu;

 param.handle = 0;
 param.primary = 1;
 param.low_gm_sz = type->low_gm_size;
 param.high_gm_sz = type->high_gm_size;
 param.fence_sz = type->fence;
 param.weight = type->weight;
 param.resolution = type->resolution;


 param.low_gm_sz = BYTES_TO_MB(param.low_gm_sz);
 param.high_gm_sz = BYTES_TO_MB(param.high_gm_sz);

 mutex_lock(&gvt->lock);
 vgpu = __intel_gvt_create_vgpu(gvt, &param);
 if (!IS_ERR(vgpu))

  intel_gvt_update_vgpu_types(gvt);
 mutex_unlock(&gvt->lock);

 return vgpu;
}
