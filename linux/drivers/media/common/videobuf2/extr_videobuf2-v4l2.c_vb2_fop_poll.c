
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {struct vb2_queue* queue; struct mutex* lock; } ;
struct vb2_queue {int owner; void* fileio; struct mutex* lock; } ;
struct mutex {int dummy; } ;
struct file {int private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLERR ;
 int WARN_ON (int) ;
 scalar_t__ mutex_lock_interruptible (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int vb2_poll (struct vb2_queue*,struct file*,int *) ;
 struct video_device* video_devdata (struct file*) ;

__poll_t vb2_fop_poll(struct file *file, poll_table *wait)
{
 struct video_device *vdev = video_devdata(file);
 struct vb2_queue *q = vdev->queue;
 struct mutex *lock = q->lock ? q->lock : vdev->lock;
 __poll_t res;
 void *fileio;





 WARN_ON(!lock);

 if (lock && mutex_lock_interruptible(lock))
  return EPOLLERR;

 fileio = q->fileio;

 res = vb2_poll(vdev->queue, file, wait);


 if (!fileio && q->fileio)
  q->owner = file->private_data;
 if (lock)
  mutex_unlock(lock);
 return res;
}
