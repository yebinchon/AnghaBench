
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsdvb_debugfs {int stats_was_read; int refcount; int stats_queue; int lock; } ;
struct inode {int dummy; } ;
struct file {struct smsdvb_debugfs* private_data; } ;


 int kref_put (int *,int ) ;
 int smsdvb_debugfs_data_release ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible_sync (int *) ;

__attribute__((used)) static int smsdvb_stats_release(struct inode *inode, struct file *file)
{
 struct smsdvb_debugfs *debug_data = file->private_data;

 spin_lock(&debug_data->lock);
 debug_data->stats_was_read = 1;
 spin_unlock(&debug_data->lock);
 wake_up_interruptible_sync(&debug_data->stats_queue);

 kref_put(&debug_data->refcount, smsdvb_debugfs_data_release);
 file->private_data = ((void*)0);

 return 0;
}
