
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct videobuf_queue {int dummy; } ;
struct video_device {int vfl_type; int lock; } ;
struct saa7146_fh {struct videobuf_queue vbi_q; TYPE_2__* dev; struct videobuf_queue video_q; } ;
struct file {struct saa7146_fh* private_data; } ;
struct TYPE_4__ {TYPE_1__* ext_vv_data; } ;
struct TYPE_3__ {int capabilities; } ;


 int BUG () ;
 int DEB_EE (char*,struct file*,struct vm_area_struct*) ;
 int ENODEV ;
 int ERESTARTSYS ;
 int V4L2_CAP_SLICED_VBI_OUTPUT ;


 scalar_t__ mutex_lock_interruptible (int ) ;
 int mutex_unlock (int ) ;
 struct video_device* video_devdata (struct file*) ;
 int videobuf_mmap_mapper (struct videobuf_queue*,struct vm_area_struct*) ;

__attribute__((used)) static int fops_mmap(struct file *file, struct vm_area_struct * vma)
{
 struct video_device *vdev = video_devdata(file);
 struct saa7146_fh *fh = file->private_data;
 struct videobuf_queue *q;
 int res;

 switch (vdev->vfl_type) {
 case 129: {
  DEB_EE("V4L2_BUF_TYPE_VIDEO_CAPTURE: file:%p, vma:%p\n",
         file, vma);
  q = &fh->video_q;
  break;
  }
 case 128: {
  DEB_EE("V4L2_BUF_TYPE_VBI_CAPTURE: file:%p, vma:%p\n",
         file, vma);
  if (fh->dev->ext_vv_data->capabilities & V4L2_CAP_SLICED_VBI_OUTPUT)
   return -ENODEV;
  q = &fh->vbi_q;
  break;
  }
 default:
  BUG();
 }

 if (mutex_lock_interruptible(vdev->lock))
  return -ERESTARTSYS;
 res = videobuf_mmap_mapper(q, vma);
 mutex_unlock(vdev->lock);
 return res;
}
