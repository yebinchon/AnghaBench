
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_vgpu {int id; TYPE_1__* gvt; } ;
struct TYPE_2__ {int dev_priv; } ;


 int EINVAL ;
 int GAMW_ECO_ENABLE_64K_IPS_FIELD ;
 int INTEL_GEN (int ) ;
 int gvt_dbg_core (char*,int ) ;
 int gvt_vgpu_err (char*,int) ;
 int write_vreg (struct intel_vgpu*,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int gamw_echo_dev_rw_ia_write(struct intel_vgpu *vgpu,
  unsigned int offset, void *p_data, unsigned int bytes)
{
 u32 ips = (*(u32 *)p_data) & GAMW_ECO_ENABLE_64K_IPS_FIELD;

 if (INTEL_GEN(vgpu->gvt->dev_priv) <= 10) {
  if (ips == GAMW_ECO_ENABLE_64K_IPS_FIELD)
   gvt_dbg_core("vgpu%d: ips enabled\n", vgpu->id);
  else if (!ips)
   gvt_dbg_core("vgpu%d: ips disabled\n", vgpu->id);
  else {




   gvt_vgpu_err("Unsupported IPS setting %x, cannot enable 64K gtt.\n",
         ips);
   return -EINVAL;
  }
 }

 write_vreg(vgpu, offset, p_data, bytes);
 return 0;
}
