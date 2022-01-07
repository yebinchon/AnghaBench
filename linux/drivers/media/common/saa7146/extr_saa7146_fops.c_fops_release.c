
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct video_device {scalar_t__ vfl_type; int lock; } ;
struct saa7146_fh {int fh; struct saa7146_dev* dev; } ;
struct saa7146_dev {TYPE_3__* ext; TYPE_2__* ext_vv_data; } ;
struct file {struct saa7146_fh* private_data; } ;
struct TYPE_10__ {int (* release ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_9__ {int (* release ) (struct saa7146_dev*,struct file*) ;} ;
struct TYPE_8__ {int module; } ;
struct TYPE_6__ {int (* release ) (struct file*) ;} ;
struct TYPE_7__ {int capabilities; TYPE_1__ vbi_fops; } ;


 int DEB_EE (char*,struct file*) ;
 int V4L2_CAP_VBI_CAPTURE ;
 scalar_t__ VFL_TYPE_VBI ;
 int kfree (struct saa7146_fh*) ;
 int module_put (int ) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 TYPE_5__ saa7146_vbi_uops ;
 TYPE_4__ saa7146_video_uops ;
 int stub1 (struct saa7146_dev*,struct file*) ;
 int stub2 (struct file*) ;
 int stub3 (struct saa7146_dev*,struct file*) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 struct video_device* video_devdata (struct file*) ;

__attribute__((used)) static int fops_release(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct saa7146_fh *fh = file->private_data;
 struct saa7146_dev *dev = fh->dev;

 DEB_EE("file:%p\n", file);

 mutex_lock(vdev->lock);

 if (vdev->vfl_type == VFL_TYPE_VBI) {
  if (dev->ext_vv_data->capabilities & V4L2_CAP_VBI_CAPTURE)
   saa7146_vbi_uops.release(dev,file);
  if (dev->ext_vv_data->vbi_fops.release)
   dev->ext_vv_data->vbi_fops.release(file);
 } else {
  saa7146_video_uops.release(dev,file);
 }

 v4l2_fh_del(&fh->fh);
 v4l2_fh_exit(&fh->fh);
 module_put(dev->ext->module);
 file->private_data = ((void*)0);
 kfree(fh);

 mutex_unlock(vdev->lock);

 return 0;
}
