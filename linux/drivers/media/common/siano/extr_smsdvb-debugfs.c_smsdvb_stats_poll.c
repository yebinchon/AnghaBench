
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsdvb_debugfs {int refcount; int stats_queue; } ;
struct file {struct smsdvb_debugfs* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int poll_wait (struct file*,int *,int *) ;
 int smsdvb_debugfs_data_release ;
 int smsdvb_stats_wait_read (struct smsdvb_debugfs*) ;

__attribute__((used)) static __poll_t smsdvb_stats_poll(struct file *file, poll_table *wait)
{
 struct smsdvb_debugfs *debug_data = file->private_data;
 int rc;

 kref_get(&debug_data->refcount);

 poll_wait(file, &debug_data->stats_queue, wait);

 rc = smsdvb_stats_wait_read(debug_data);
 kref_put(&debug_data->refcount, smsdvb_debugfs_data_release);

 return rc > 0 ? EPOLLIN | EPOLLRDNORM : 0;
}
