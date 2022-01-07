
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int queue; } ;
struct v4l2_buffer {int dummy; } ;
struct file {int dummy; } ;


 int vb2_querybuf (int ,struct v4l2_buffer*) ;
 struct video_device* video_devdata (struct file*) ;

int vb2_ioctl_querybuf(struct file *file, void *priv, struct v4l2_buffer *p)
{
 struct video_device *vdev = video_devdata(file);


 return vb2_querybuf(vdev->queue, p);
}
