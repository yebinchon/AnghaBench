
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_private {int dummy; } ;
struct poll_table_struct {int dummy; } ;
struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_1__* minor; } ;
typedef int __poll_t ;
struct TYPE_2__ {int dev; } ;


 int SVGA_SYNC_GENERIC ;
 int drm_poll (struct file*,struct poll_table_struct*) ;
 int vmw_fifo_ping_host (struct vmw_private*,int ) ;
 struct vmw_private* vmw_priv (int ) ;

__poll_t vmw_fops_poll(struct file *filp, struct poll_table_struct *wait)
{
 struct drm_file *file_priv = filp->private_data;
 struct vmw_private *dev_priv =
  vmw_priv(file_priv->minor->dev);

 vmw_fifo_ping_host(dev_priv, SVGA_SYNC_GENERIC);
 return drm_poll(filp, wait);
}
