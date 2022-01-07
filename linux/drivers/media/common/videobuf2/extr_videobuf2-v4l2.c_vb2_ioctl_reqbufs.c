
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct video_device {TYPE_1__* queue; } ;
struct v4l2_requestbuffers {int count; int memory; int capabilities; int type; } ;
struct file {int * private_data; } ;
struct TYPE_4__ {int * owner; } ;


 int EBUSY ;
 int fill_buf_caps (TYPE_1__*,int *) ;
 int vb2_core_reqbufs (TYPE_1__*,int ,int *) ;
 scalar_t__ vb2_queue_is_busy (struct video_device*,struct file*) ;
 int vb2_verify_memory_type (TYPE_1__*,int ,int ) ;
 struct video_device* video_devdata (struct file*) ;

int vb2_ioctl_reqbufs(struct file *file, void *priv,
     struct v4l2_requestbuffers *p)
{
 struct video_device *vdev = video_devdata(file);
 int res = vb2_verify_memory_type(vdev->queue, p->memory, p->type);

 fill_buf_caps(vdev->queue, &p->capabilities);
 if (res)
  return res;
 if (vb2_queue_is_busy(vdev, file))
  return -EBUSY;
 res = vb2_core_reqbufs(vdev->queue, p->memory, &p->count);


 if (res == 0)
  vdev->queue->owner = p->count ? file->private_data : ((void*)0);
 return res;
}
