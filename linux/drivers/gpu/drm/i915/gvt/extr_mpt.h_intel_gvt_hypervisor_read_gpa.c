
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_vgpu {int handle; } ;
struct TYPE_4__ {TYPE_1__* mpt; } ;
struct TYPE_3__ {int (* read_gpa ) (int ,unsigned long,void*,unsigned long) ;} ;


 TYPE_2__ intel_gvt_host ;
 int stub1 (int ,unsigned long,void*,unsigned long) ;

__attribute__((used)) static inline int intel_gvt_hypervisor_read_gpa(struct intel_vgpu *vgpu,
  unsigned long gpa, void *buf, unsigned long len)
{
 return intel_gvt_host.mpt->read_gpa(vgpu->handle, gpa, buf, len);
}
