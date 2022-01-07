
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct drm_printer {int dummy; } ;
struct drm_info_node {TYPE_1__* info_ent; } ;
struct debugfs_regset32 {int dummy; } ;
struct TYPE_2__ {struct debugfs_regset32* data; } ;


 int drm_print_regset32 (struct drm_printer*,struct debugfs_regset32*) ;
 struct drm_printer drm_seq_file_printer (struct seq_file*) ;

__attribute__((used)) static int vc4_debugfs_regset32(struct seq_file *m, void *unused)
{
 struct drm_info_node *node = (struct drm_info_node *)m->private;
 struct debugfs_regset32 *regset = node->info_ent->data;
 struct drm_printer p = drm_seq_file_printer(m);

 drm_print_regset32(&p, regset);

 return 0;
}
