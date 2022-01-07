
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_8__ {TYPE_3__* ggtt_mm; } ;
struct intel_vgpu {int vgpu_lock; TYPE_4__ gtt; struct intel_gvt* gvt; } ;
struct TYPE_5__ {scalar_t__ gtt_start_offset; } ;
struct intel_gvt {TYPE_1__ device_info; } ;
struct TYPE_6__ {void* virtual_ggtt; } ;
struct TYPE_7__ {TYPE_2__ ggtt_mm; } ;


 int intel_vgpu_default_mmio_read (struct intel_vgpu*,unsigned int,void*,unsigned int) ;
 int intel_vgpu_default_mmio_write (struct intel_vgpu*,unsigned int,void*,unsigned int) ;
 unsigned int intel_vgpu_gpa_to_mmio_offset (struct intel_vgpu*,int ) ;
 int memcpy (void*,void*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ reg_is_gtt (struct intel_gvt*,unsigned int) ;
 scalar_t__ reg_is_mmio (struct intel_gvt*,unsigned int) ;

__attribute__((used)) static void failsafe_emulate_mmio_rw(struct intel_vgpu *vgpu, u64 pa,
  void *p_data, unsigned int bytes, bool read)
{
 struct intel_gvt *gvt = ((void*)0);
 void *pt = ((void*)0);
 unsigned int offset = 0;

 if (!vgpu || !p_data)
  return;

 gvt = vgpu->gvt;
 mutex_lock(&vgpu->vgpu_lock);
 offset = intel_vgpu_gpa_to_mmio_offset(vgpu, pa);
 if (reg_is_mmio(gvt, offset)) {
  if (read)
   intel_vgpu_default_mmio_read(vgpu, offset, p_data,
     bytes);
  else
   intel_vgpu_default_mmio_write(vgpu, offset, p_data,
     bytes);
 } else if (reg_is_gtt(gvt, offset)) {
  offset -= gvt->device_info.gtt_start_offset;
  pt = vgpu->gtt.ggtt_mm->ggtt_mm.virtual_ggtt + offset;
  if (read)
   memcpy(p_data, pt, bytes);
  else
   memcpy(pt, p_data, bytes);

 }
 mutex_unlock(&vgpu->vgpu_lock);
}
