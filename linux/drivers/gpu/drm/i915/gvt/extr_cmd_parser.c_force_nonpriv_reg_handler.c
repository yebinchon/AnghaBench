
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct parser_exec_state {size_t ring_id; TYPE_2__* vgpu; } ;
struct intel_gvt {struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {TYPE_1__** engine; } ;
struct TYPE_4__ {struct intel_gvt* gvt; } ;
struct TYPE_3__ {unsigned int mmio_base; } ;


 int EINVAL ;
 int RING_NOPID (unsigned int) ;
 int cmd_ptr (struct parser_exec_state*,unsigned int) ;
 unsigned int cmd_val (struct parser_exec_state*,unsigned int) ;
 int gvt_err (char*,unsigned int,...) ;
 unsigned int i915_mmio_reg_offset (int ) ;
 int intel_gvt_in_force_nonpriv_whitelist (struct intel_gvt*,unsigned int) ;
 int patch_value (struct parser_exec_state*,int ,unsigned int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int force_nonpriv_reg_handler(struct parser_exec_state *s,
  unsigned int offset, unsigned int index, char *cmd)
{
 struct intel_gvt *gvt = s->vgpu->gvt;
 unsigned int data;
 u32 ring_base;
 u32 nopid;
 struct drm_i915_private *dev_priv = s->vgpu->gvt->dev_priv;

 if (!strcmp(cmd, "lri"))
  data = cmd_val(s, index + 1);
 else {
  gvt_err("Unexpected forcenonpriv 0x%x write from cmd %s\n",
   offset, cmd);
  return -EINVAL;
 }

 ring_base = dev_priv->engine[s->ring_id]->mmio_base;
 nopid = i915_mmio_reg_offset(RING_NOPID(ring_base));

 if (!intel_gvt_in_force_nonpriv_whitelist(gvt, data) &&
   data != nopid) {
  gvt_err("Unexpected forcenonpriv 0x%x LRI write, value=0x%x\n",
   offset, data);
  patch_value(s, cmd_ptr(s, index), nopid);
  return 0;
 }
 return 0;
}
