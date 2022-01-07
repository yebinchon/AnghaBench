
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhid_device {int running; int worker; int report_wait; int waitq; int qlock; int report_lock; int devlock; } ;
struct inode {int dummy; } ;
struct file {struct uhid_device* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int init_waitqueue_head (int *) ;
 struct uhid_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int stream_open (struct inode*,struct file*) ;
 int uhid_device_add_worker ;

__attribute__((used)) static int uhid_char_open(struct inode *inode, struct file *file)
{
 struct uhid_device *uhid;

 uhid = kzalloc(sizeof(*uhid), GFP_KERNEL);
 if (!uhid)
  return -ENOMEM;

 mutex_init(&uhid->devlock);
 mutex_init(&uhid->report_lock);
 spin_lock_init(&uhid->qlock);
 init_waitqueue_head(&uhid->waitq);
 init_waitqueue_head(&uhid->report_wait);
 uhid->running = 0;
 INIT_WORK(&uhid->worker, uhid_device_add_worker);

 file->private_data = uhid;
 stream_open(inode, file);

 return 0;
}
