
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct drm_crtc* crtc; } ;
struct TYPE_10__ {TYPE_2__ encoder; } ;
struct tegra_sor {TYPE_3__ output; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_4__* minor; TYPE_1__* info_ent; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {TYPE_5__* state; } ;
struct TYPE_13__ {unsigned int offset; int name; } ;
struct TYPE_12__ {int active; } ;
struct TYPE_11__ {struct drm_device* dev; } ;
struct TYPE_8__ {struct tegra_sor* data; } ;


 unsigned int ARRAY_SIZE (TYPE_6__*) ;
 int EBUSY ;
 int drm_modeset_lock_all (struct drm_device*) ;
 int drm_modeset_unlock_all (struct drm_device*) ;
 int seq_printf (struct seq_file*,char*,int ,unsigned int,int ) ;
 int tegra_sor_readl (struct tegra_sor*,unsigned int) ;
 TYPE_6__* tegra_sor_regs ;

__attribute__((used)) static int tegra_sor_show_regs(struct seq_file *s, void *data)
{
 struct drm_info_node *node = s->private;
 struct tegra_sor *sor = node->info_ent->data;
 struct drm_crtc *crtc = sor->output.encoder.crtc;
 struct drm_device *drm = node->minor->dev;
 unsigned int i;
 int err = 0;

 drm_modeset_lock_all(drm);

 if (!crtc || !crtc->state->active) {
  err = -EBUSY;
  goto unlock;
 }

 for (i = 0; i < ARRAY_SIZE(tegra_sor_regs); i++) {
  unsigned int offset = tegra_sor_regs[i].offset;

  seq_printf(s, "%-38s %#05x %08x\n", tegra_sor_regs[i].name,
      offset, tegra_sor_readl(sor, offset));
 }

unlock:
 drm_modeset_unlock_all(drm);
 return err;
}
