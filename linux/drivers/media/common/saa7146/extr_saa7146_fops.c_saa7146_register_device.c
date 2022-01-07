
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int device_caps; int name; int tvnorms; int * v4l2_dev; int * lock; int release; int * ioctl_ops; int * fops; } ;
struct saa7146_dev {int name; TYPE_2__* ext_vv_data; int v4l2_dev; int v4l2_lock; } ;
struct TYPE_4__ {int num_stds; int capabilities; TYPE_1__* stds; int vbi_ops; int vid_ops; } ;
struct TYPE_3__ {int id; } ;


 int DEB_EE (char*,struct saa7146_dev*,char*,int) ;
 int ERR (char*) ;
 int V4L2_CAP_AUDIO ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_SLICED_VBI_OUTPUT ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VBI_CAPTURE ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CAP_VIDEO_OVERLAY ;
 int VFL_TYPE_GRABBER ;
 int pr_info (char*,int ,int ) ;
 int strscpy (int ,char*,int) ;
 int video_device_node_name (struct video_device*) ;
 int video_device_release_empty ;
 int video_fops ;
 int video_register_device (struct video_device*,int,int) ;
 int video_set_drvdata (struct video_device*,struct saa7146_dev*) ;

int saa7146_register_device(struct video_device *vfd, struct saa7146_dev *dev,
       char *name, int type)
{
 int err;
 int i;

 DEB_EE("dev:%p, name:'%s', type:%d\n", dev, name, type);

 vfd->fops = &video_fops;
 if (type == VFL_TYPE_GRABBER)
  vfd->ioctl_ops = &dev->ext_vv_data->vid_ops;
 else
  vfd->ioctl_ops = &dev->ext_vv_data->vbi_ops;
 vfd->release = video_device_release_empty;
 vfd->lock = &dev->v4l2_lock;
 vfd->v4l2_dev = &dev->v4l2_dev;
 vfd->tvnorms = 0;
 for (i = 0; i < dev->ext_vv_data->num_stds; i++)
  vfd->tvnorms |= dev->ext_vv_data->stds[i].id;
 strscpy(vfd->name, name, sizeof(vfd->name));
 vfd->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_VIDEO_OVERLAY |
      V4L2_CAP_READWRITE | V4L2_CAP_STREAMING;
 vfd->device_caps |= dev->ext_vv_data->capabilities;
 if (type == VFL_TYPE_GRABBER)
  vfd->device_caps &=
   ~(V4L2_CAP_VBI_CAPTURE | V4L2_CAP_SLICED_VBI_OUTPUT);
 else
  vfd->device_caps &=
   ~(V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_VIDEO_OVERLAY | V4L2_CAP_AUDIO);
 video_set_drvdata(vfd, dev);

 err = video_register_device(vfd, type, -1);
 if (err < 0) {
  ERR("cannot register v4l2 device. skipping.\n");
  return err;
 }

 pr_info("%s: registered device %s [v4l2]\n",
  dev->name, video_device_node_name(vfd));
 return 0;
}
