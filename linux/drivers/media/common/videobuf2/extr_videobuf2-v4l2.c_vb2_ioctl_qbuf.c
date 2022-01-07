
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {TYPE_1__* v4l2_dev; int queue; } ;
struct v4l2_buffer {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int mdev; } ;


 int EBUSY ;
 int vb2_qbuf (int ,int ,struct v4l2_buffer*) ;
 scalar_t__ vb2_queue_is_busy (struct video_device*,struct file*) ;
 struct video_device* video_devdata (struct file*) ;

int vb2_ioctl_qbuf(struct file *file, void *priv, struct v4l2_buffer *p)
{
 struct video_device *vdev = video_devdata(file);

 if (vb2_queue_is_busy(vdev, file))
  return -EBUSY;
 return vb2_qbuf(vdev->queue, vdev->v4l2_dev->mdev, p);
}
