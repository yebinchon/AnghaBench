
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct pl111_drm_dev_private {scalar_t__ regs; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {struct pl111_drm_dev_private* dev_private; } ;
struct TYPE_5__ {scalar_t__ reg; int name; } ;
struct TYPE_4__ {struct drm_device* dev; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 TYPE_2__* pl111_reg_defs ;
 int readl (scalar_t__) ;
 int seq_printf (struct seq_file*,char*,int ,scalar_t__,int ) ;

int pl111_debugfs_regs(struct seq_file *m, void *unused)
{
 struct drm_info_node *node = (struct drm_info_node *)m->private;
 struct drm_device *dev = node->minor->dev;
 struct pl111_drm_dev_private *priv = dev->dev_private;
 int i;

 for (i = 0; i < ARRAY_SIZE(pl111_reg_defs); i++) {
  seq_printf(m, "%s (0x%04x): 0x%08x\n",
      pl111_reg_defs[i].name, pl111_reg_defs[i].reg,
      readl(priv->regs + pl111_reg_defs[i].reg));
 }

 return 0;
}
