
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v3d_dev {int ver; int cores; } ;
struct seq_file {scalar_t__ private; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {int dummy; } ;
struct TYPE_8__ {int reg; int name; } ;
struct TYPE_7__ {struct drm_device* dev; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int V3D_CORE_READ (int,int ) ;
 int V3D_GCA_READ (int ) ;
 int V3D_READ (int ) ;
 int seq_printf (struct seq_file*,char*,int,int ,int ,...) ;
 struct v3d_dev* to_v3d_dev (struct drm_device*) ;
 TYPE_2__* v3d_core_reg_defs ;
 TYPE_2__* v3d_csd_reg_defs ;
 TYPE_2__* v3d_gca_reg_defs ;
 scalar_t__ v3d_has_csd (struct v3d_dev*) ;
 TYPE_2__* v3d_hub_reg_defs ;

__attribute__((used)) static int v3d_v3d_debugfs_regs(struct seq_file *m, void *unused)
{
 struct drm_info_node *node = (struct drm_info_node *)m->private;
 struct drm_device *dev = node->minor->dev;
 struct v3d_dev *v3d = to_v3d_dev(dev);
 int i, core;

 for (i = 0; i < ARRAY_SIZE(v3d_hub_reg_defs); i++) {
  seq_printf(m, "%s (0x%04x): 0x%08x\n",
      v3d_hub_reg_defs[i].name, v3d_hub_reg_defs[i].reg,
      V3D_READ(v3d_hub_reg_defs[i].reg));
 }

 if (v3d->ver < 41) {
  for (i = 0; i < ARRAY_SIZE(v3d_gca_reg_defs); i++) {
   seq_printf(m, "%s (0x%04x): 0x%08x\n",
       v3d_gca_reg_defs[i].name,
       v3d_gca_reg_defs[i].reg,
       V3D_GCA_READ(v3d_gca_reg_defs[i].reg));
  }
 }

 for (core = 0; core < v3d->cores; core++) {
  for (i = 0; i < ARRAY_SIZE(v3d_core_reg_defs); i++) {
   seq_printf(m, "core %d %s (0x%04x): 0x%08x\n",
       core,
       v3d_core_reg_defs[i].name,
       v3d_core_reg_defs[i].reg,
       V3D_CORE_READ(core,
       v3d_core_reg_defs[i].reg));
  }

  if (v3d_has_csd(v3d)) {
   for (i = 0; i < ARRAY_SIZE(v3d_csd_reg_defs); i++) {
    seq_printf(m, "core %d %s (0x%04x): 0x%08x\n",
        core,
        v3d_csd_reg_defs[i].name,
        v3d_csd_reg_defs[i].reg,
        V3D_CORE_READ(core,
        v3d_csd_reg_defs[i].reg));
   }
  }
 }

 return 0;
}
