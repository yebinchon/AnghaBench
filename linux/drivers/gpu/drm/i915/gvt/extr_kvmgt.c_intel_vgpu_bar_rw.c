
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct intel_vgpu {int dummy; } ;
struct TYPE_2__ {int (* emulate_mmio_write ) (struct intel_vgpu*,scalar_t__,void*,unsigned int) ;int (* emulate_mmio_read ) (struct intel_vgpu*,scalar_t__,void*,unsigned int) ;} ;


 TYPE_1__* intel_gvt_ops ;
 scalar_t__ intel_vgpu_get_bar_addr (struct intel_vgpu*,int) ;
 int stub1 (struct intel_vgpu*,scalar_t__,void*,unsigned int) ;
 int stub2 (struct intel_vgpu*,scalar_t__,void*,unsigned int) ;

__attribute__((used)) static int intel_vgpu_bar_rw(struct intel_vgpu *vgpu, int bar, u64 off,
        void *buf, unsigned int count, bool is_write)
{
 u64 bar_start = intel_vgpu_get_bar_addr(vgpu, bar);
 int ret;

 if (is_write)
  ret = intel_gvt_ops->emulate_mmio_write(vgpu,
     bar_start + off, buf, count);
 else
  ret = intel_gvt_ops->emulate_mmio_read(vgpu,
     bar_start + off, buf, count);
 return ret;
}
