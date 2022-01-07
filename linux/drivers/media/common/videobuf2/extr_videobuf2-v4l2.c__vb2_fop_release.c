
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {TYPE_1__* queue; } ;
struct mutex {int dummy; } ;
struct file {int * private_data; } ;
struct TYPE_2__ {int * owner; } ;


 int mutex_lock (struct mutex*) ;
 int mutex_unlock (struct mutex*) ;
 int v4l2_fh_release (struct file*) ;
 int vb2_queue_release (TYPE_1__*) ;
 struct video_device* video_devdata (struct file*) ;

int _vb2_fop_release(struct file *file, struct mutex *lock)
{
 struct video_device *vdev = video_devdata(file);

 if (lock)
  mutex_lock(lock);
 if (file->private_data == vdev->queue->owner) {
  vb2_queue_release(vdev->queue);
  vdev->queue->owner = ((void*)0);
 }
 if (lock)
  mutex_unlock(lock);
 return v4l2_fh_release(file);
}
