
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int overflow; int underflow; int vblank; int frames; } ;
struct tegra_dc {TYPE_2__ stats; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct TYPE_3__ {struct tegra_dc* data; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int tegra_dc_show_stats(struct seq_file *s, void *data)
{
 struct drm_info_node *node = s->private;
 struct tegra_dc *dc = node->info_ent->data;

 seq_printf(s, "frames: %lu\n", dc->stats.frames);
 seq_printf(s, "vblank: %lu\n", dc->stats.vblank);
 seq_printf(s, "underflow: %lu\n", dc->stats.underflow);
 seq_printf(s, "overflow: %lu\n", dc->stats.overflow);

 return 0;
}
