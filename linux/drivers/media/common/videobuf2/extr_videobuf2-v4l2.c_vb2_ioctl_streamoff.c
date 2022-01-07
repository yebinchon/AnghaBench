
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int queue; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EBUSY ;
 scalar_t__ vb2_queue_is_busy (struct video_device*,struct file*) ;
 int vb2_streamoff (int ,int) ;
 struct video_device* video_devdata (struct file*) ;

int vb2_ioctl_streamoff(struct file *file, void *priv, enum v4l2_buf_type i)
{
 struct video_device *vdev = video_devdata(file);

 if (vb2_queue_is_busy(vdev, file))
  return -EBUSY;
 return vb2_streamoff(vdev->queue, i);
}
