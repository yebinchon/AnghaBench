
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int mutex; TYPE_2__* state; } ;
struct tegra_dc {TYPE_3__ base; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_9__ {unsigned int offset; int name; } ;
struct TYPE_7__ {int active; } ;
struct TYPE_6__ {struct tegra_dc* data; } ;


 unsigned int ARRAY_SIZE (TYPE_4__*) ;
 int EBUSY ;
 int drm_modeset_lock (int *,int *) ;
 int drm_modeset_unlock (int *) ;
 int seq_printf (struct seq_file*,char*,int ,unsigned int,int ) ;
 int tegra_dc_readl (struct tegra_dc*,unsigned int) ;
 TYPE_4__* tegra_dc_regs ;

__attribute__((used)) static int tegra_dc_show_regs(struct seq_file *s, void *data)
{
 struct drm_info_node *node = s->private;
 struct tegra_dc *dc = node->info_ent->data;
 unsigned int i;
 int err = 0;

 drm_modeset_lock(&dc->base.mutex, ((void*)0));

 if (!dc->base.state->active) {
  err = -EBUSY;
  goto unlock;
 }

 for (i = 0; i < ARRAY_SIZE(tegra_dc_regs); i++) {
  unsigned int offset = tegra_dc_regs[i].offset;

  seq_printf(s, "%-40s %#05x %08x\n", tegra_dc_regs[i].name,
      offset, tegra_dc_readl(dc, offset));
 }

unlock:
 drm_modeset_unlock(&dc->base.mutex);
 return err;
}
