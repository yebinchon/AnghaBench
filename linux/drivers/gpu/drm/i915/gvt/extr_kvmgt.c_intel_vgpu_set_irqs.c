
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_vgpu {int dummy; } ;


 int ENOTTY ;


 int VFIO_IRQ_SET_ACTION_TYPE_MASK ;



 int intel_vgpu_set_intx_mask (struct intel_vgpu*,unsigned int,unsigned int,unsigned int,int,void*) ;
 int intel_vgpu_set_intx_trigger (struct intel_vgpu*,unsigned int,unsigned int,unsigned int,int,void*) ;
 int intel_vgpu_set_intx_unmask (struct intel_vgpu*,unsigned int,unsigned int,unsigned int,int,void*) ;
 int intel_vgpu_set_msi_trigger (struct intel_vgpu*,unsigned int,unsigned int,unsigned int,int,void*) ;

__attribute__((used)) static int intel_vgpu_set_irqs(struct intel_vgpu *vgpu, u32 flags,
  unsigned int index, unsigned int start, unsigned int count,
  void *data)
{
 int (*func)(struct intel_vgpu *vgpu, unsigned int index,
   unsigned int start, unsigned int count, u32 flags,
   void *data) = ((void*)0);

 switch (index) {
 case 129:
  switch (flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) {
  case 132:
   func = intel_vgpu_set_intx_mask;
   break;
  case 130:
   func = intel_vgpu_set_intx_unmask;
   break;
  case 131:
   func = intel_vgpu_set_intx_trigger;
   break;
  }
  break;
 case 128:
  switch (flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) {
  case 132:
  case 130:

   break;
  case 131:
   func = intel_vgpu_set_msi_trigger;
   break;
  }
  break;
 }

 if (!func)
  return -ENOTTY;

 return func(vgpu, index, start, count, flags, data);
}
