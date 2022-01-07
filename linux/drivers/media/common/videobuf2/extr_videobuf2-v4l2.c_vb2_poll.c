
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int flags; } ;
struct vb2_queue {int dummy; } ;
struct v4l2_fh {int wait; } ;
struct file {struct v4l2_fh* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLPRI ;
 int V4L2_FL_USES_V4L2_FH ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ v4l2_event_pending (struct v4l2_fh*) ;
 int vb2_core_poll (struct vb2_queue*,struct file*,int *) ;
 struct video_device* video_devdata (struct file*) ;

__poll_t vb2_poll(struct vb2_queue *q, struct file *file, poll_table *wait)
{
 struct video_device *vfd = video_devdata(file);
 __poll_t res;

 res = vb2_core_poll(q, file, wait);

 if (test_bit(V4L2_FL_USES_V4L2_FH, &vfd->flags)) {
  struct v4l2_fh *fh = file->private_data;

  poll_wait(file, &fh->wait, wait);
  if (v4l2_event_pending(fh))
   res |= EPOLLPRI;
 }

 return res;
}
