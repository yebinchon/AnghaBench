
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int queue; } ;
struct v4l2_exportbuffer {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int vb2_expbuf (int ,struct v4l2_exportbuffer*) ;
 scalar_t__ vb2_queue_is_busy (struct video_device*,struct file*) ;
 struct video_device* video_devdata (struct file*) ;

int vb2_ioctl_expbuf(struct file *file, void *priv, struct v4l2_exportbuffer *p)
{
 struct video_device *vdev = video_devdata(file);

 if (vb2_queue_is_busy(vdev, file))
  return -EBUSY;
 return vb2_expbuf(vdev->queue, p);
}
