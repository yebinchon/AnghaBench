
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct saa7146_vv {int video_status; TYPE_2__* standard; int * ov_suspend; int * video_fh; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {TYPE_1__* ext_vv_data; struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int id; int name; } ;
struct TYPE_3__ {int num_stds; int (* std_callback ) (struct saa7146_dev*,TYPE_2__*) ;TYPE_2__* stds; } ;


 int DEB_D (char*) ;
 int DEB_EE (char*,...) ;
 int EBUSY ;
 int EINVAL ;
 int STATUS_CAPTURE ;
 int STATUS_OVERLAY ;
 int saa7146_start_preview (int *) ;
 int saa7146_stop_preview (int *) ;
 int stub1 (struct saa7146_dev*,TYPE_2__*) ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *fh, v4l2_std_id id)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct saa7146_vv *vv = dev->vv_data;
 int found = 0;
 int err, i;

 DEB_EE("VIDIOC_S_STD\n");

 if ((vv->video_status & STATUS_CAPTURE) == STATUS_CAPTURE) {
  DEB_D("cannot change video standard while streaming capture is active\n");
  return -EBUSY;
 }

 if ((vv->video_status & STATUS_OVERLAY) != 0) {
  vv->ov_suspend = vv->video_fh;
  err = saa7146_stop_preview(vv->video_fh);
  if (0 != err) {
   DEB_D("suspending video failed. aborting\n");
   return err;
  }
 }

 for (i = 0; i < dev->ext_vv_data->num_stds; i++)
  if (id & dev->ext_vv_data->stds[i].id)
   break;
 if (i != dev->ext_vv_data->num_stds) {
  vv->standard = &dev->ext_vv_data->stds[i];
  if (((void*)0) != dev->ext_vv_data->std_callback)
   dev->ext_vv_data->std_callback(dev, vv->standard);
  found = 1;
 }

 if (vv->ov_suspend != ((void*)0)) {
  saa7146_start_preview(vv->ov_suspend);
  vv->ov_suspend = ((void*)0);
 }

 if (!found) {
  DEB_EE("VIDIOC_S_STD: standard not found\n");
  return -EINVAL;
 }

 DEB_EE("VIDIOC_S_STD: set to standard to '%s'\n", vv->standard->name);
 return 0;
}
