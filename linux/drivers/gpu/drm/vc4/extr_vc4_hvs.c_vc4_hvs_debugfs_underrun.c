
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_dev {int underrun; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_printer {int dummy; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;


 int atomic_read (int *) ;
 int drm_printf (struct drm_printer*,char*,int ) ;
 struct drm_printer drm_seq_file_printer (struct seq_file*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static int vc4_hvs_debugfs_underrun(struct seq_file *m, void *data)
{
 struct drm_info_node *node = m->private;
 struct drm_device *dev = node->minor->dev;
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct drm_printer p = drm_seq_file_printer(m);

 drm_printf(&p, "%d\n", atomic_read(&vc4->underrun));

 return 0;
}
