
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int queue; } ;
struct v4l2_buffer {int dummy; } ;
struct file {int f_flags; } ;


 int EBUSY ;
 int O_NONBLOCK ;
 int vb2_dqbuf (int ,struct v4l2_buffer*,int) ;
 scalar_t__ vb2_queue_is_busy (struct video_device*,struct file*) ;
 struct video_device* video_devdata (struct file*) ;

int vb2_ioctl_dqbuf(struct file *file, void *priv, struct v4l2_buffer *p)
{
 struct video_device *vdev = video_devdata(file);

 if (vb2_queue_is_busy(vdev, file))
  return -EBUSY;
 return vb2_dqbuf(vdev->queue, p, file->f_flags & O_NONBLOCK);
}
