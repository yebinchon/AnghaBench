
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_timeline {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct sync_timeline* private_data; } ;


 int ENOMEM ;
 int TASK_COMM_LEN ;
 int current ;
 int get_task_comm (char*,int ) ;
 struct sync_timeline* sync_timeline_create (char*) ;

__attribute__((used)) static int sw_sync_debugfs_open(struct inode *inode, struct file *file)
{
 struct sync_timeline *obj;
 char task_comm[TASK_COMM_LEN];

 get_task_comm(task_comm, current);

 obj = sync_timeline_create(task_comm);
 if (!obj)
  return -ENOMEM;

 file->private_data = obj;

 return 0;
}
