
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {int sync_seq; int last_seq; } ;
struct virtio_gpu_device {TYPE_3__ fence_drv; } ;
struct seq_file {scalar_t__ private; } ;
struct drm_info_node {TYPE_2__* minor; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {struct virtio_gpu_device* dev_private; } ;


 scalar_t__ atomic64_read (int *) ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int
virtio_gpu_debugfs_irq_info(struct seq_file *m, void *data)
{
 struct drm_info_node *node = (struct drm_info_node *) m->private;
 struct virtio_gpu_device *vgdev = node->minor->dev->dev_private;

 seq_printf(m, "fence %llu %lld\n",
     (u64)atomic64_read(&vgdev->fence_drv.last_seq),
     vgdev->fence_drv.sync_seq);
 return 0;
}
