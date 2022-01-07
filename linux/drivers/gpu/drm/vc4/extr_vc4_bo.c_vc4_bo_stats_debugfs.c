
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_dev {int dummy; } ;
struct seq_file {scalar_t__ private; } ;
struct drm_printer {int dummy; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;


 struct drm_printer drm_seq_file_printer (struct seq_file*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_bo_stats_print (struct drm_printer*,struct vc4_dev*) ;

__attribute__((used)) static int vc4_bo_stats_debugfs(struct seq_file *m, void *unused)
{
 struct drm_info_node *node = (struct drm_info_node *)m->private;
 struct drm_device *dev = node->minor->dev;
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct drm_printer p = drm_seq_file_printer(m);

 vc4_bo_stats_print(&p, vc4);

 return 0;
}
