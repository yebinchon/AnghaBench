
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsdvb_debugfs {int stats_was_read; int lock; scalar_t__ stats_count; int refcount; } ;
struct smsdvb_client_t {struct smsdvb_debugfs* debug_data; } ;
struct inode {struct smsdvb_client_t* i_private; } ;
struct file {struct smsdvb_debugfs* private_data; } ;


 int kref_get (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int smsdvb_stats_open(struct inode *inode, struct file *file)
{
 struct smsdvb_client_t *client = inode->i_private;
 struct smsdvb_debugfs *debug_data = client->debug_data;

 kref_get(&debug_data->refcount);

 spin_lock(&debug_data->lock);
 debug_data->stats_count = 0;
 debug_data->stats_was_read = 0;
 spin_unlock(&debug_data->lock);

 file->private_data = debug_data;

 return 0;
}
