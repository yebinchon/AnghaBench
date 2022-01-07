
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {struct mutex* lock; TYPE_1__* queue; } ;
struct mutex {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mutex* lock; } ;


 int _vb2_fop_release (struct file*,struct mutex*) ;
 struct video_device* video_devdata (struct file*) ;

int vb2_fop_release(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct mutex *lock = vdev->queue->lock ? vdev->queue->lock : vdev->lock;

 return _vb2_fop_release(file, lock);
}
