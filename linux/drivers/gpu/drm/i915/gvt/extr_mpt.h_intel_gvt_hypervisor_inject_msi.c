
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct intel_vgpu {int handle; int id; TYPE_3__* gvt; } ;
struct TYPE_8__ {TYPE_1__* mpt; } ;
struct TYPE_6__ {unsigned long msi_cap_offset; } ;
struct TYPE_7__ {TYPE_2__ device_info; } ;
struct TYPE_5__ {int (* inject_msi ) (int ,int ,int) ;} ;


 int EINVAL ;
 int GENMASK (int,int) ;
 scalar_t__ MSI_CAP_ADDRESS (unsigned long) ;
 scalar_t__ MSI_CAP_CONTROL (unsigned long) ;
 scalar_t__ MSI_CAP_DATA (unsigned long) ;
 int MSI_CAP_EN ;
 scalar_t__ WARN (int,char*) ;
 TYPE_4__ intel_gvt_host ;
 int stub1 (int ,int ,int) ;
 int trace_inject_msi (int ,int ,int) ;
 scalar_t__ vgpu_cfg_space (struct intel_vgpu*) ;

__attribute__((used)) static inline int intel_gvt_hypervisor_inject_msi(struct intel_vgpu *vgpu)
{
 unsigned long offset = vgpu->gvt->device_info.msi_cap_offset;
 u16 control, data;
 u32 addr;
 int ret;

 control = *(u16 *)(vgpu_cfg_space(vgpu) + MSI_CAP_CONTROL(offset));
 addr = *(u32 *)(vgpu_cfg_space(vgpu) + MSI_CAP_ADDRESS(offset));
 data = *(u16 *)(vgpu_cfg_space(vgpu) + MSI_CAP_DATA(offset));


 if (!(control & MSI_CAP_EN))
  return 0;

 if (WARN(control & GENMASK(15, 1), "only support one MSI format\n"))
  return -EINVAL;

 trace_inject_msi(vgpu->id, addr, data);

 ret = intel_gvt_host.mpt->inject_msi(vgpu->handle, addr, data);
 if (ret)
  return ret;
 return 0;
}
