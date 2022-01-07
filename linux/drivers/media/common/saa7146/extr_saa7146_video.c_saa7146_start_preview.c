
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int top; int left; int height; int width; } ;
struct TYPE_9__ {size_t field; TYPE_2__ w; } ;
struct TYPE_6__ {TYPE_4__ win; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct TYPE_10__ {TYPE_4__ win; int * fh; } ;
struct saa7146_vv {struct saa7146_fh* video_fh; int video_status; TYPE_5__ ov; TYPE_3__* ov_fmt; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct TYPE_8__ {int pixelformat; } ;


 int DEB_D (char*,...) ;
 int DEB_EE (char*,struct saa7146_dev*,struct saa7146_fh*) ;
 int EAGAIN ;
 int EBUSY ;
 scalar_t__ IS_CAPTURE_ACTIVE (struct saa7146_fh*) ;
 scalar_t__ IS_OVERLAY_ACTIVE (struct saa7146_fh*) ;
 int RESOURCE_DMA1_HPS ;
 int RESOURCE_DMA2_CLP ;
 int STATUS_OVERLAY ;
 int saa7146_enable_overlay (struct saa7146_fh*) ;
 int saa7146_res_free (struct saa7146_fh*,int) ;
 scalar_t__ saa7146_res_get (struct saa7146_fh*,int) ;
 int * v4l2_field_names ;
 int vidioc_try_fmt_vid_overlay (int *,struct saa7146_fh*,struct v4l2_format*) ;

int saa7146_start_preview(struct saa7146_fh *fh)
{
 struct saa7146_dev *dev = fh->dev;
 struct saa7146_vv *vv = dev->vv_data;
 struct v4l2_format fmt;
 int ret = 0, err = 0;

 DEB_EE("dev:%p, fh:%p\n", dev, fh);


 if (vv->ov.fh == ((void*)0)) {
  DEB_D("no overlay data available. try S_FMT first.\n");
  return -EAGAIN;
 }


 if (IS_CAPTURE_ACTIVE(fh) != 0) {
  DEB_D("streaming capture is active\n");
  return -EBUSY;
 }


 if (IS_OVERLAY_ACTIVE(fh) != 0) {
  if (vv->video_fh == fh) {
   DEB_D("overlay is already active\n");
   return 0;
  }
  DEB_D("overlay is already active in another open\n");
  return -EBUSY;
 }

 if (0 == saa7146_res_get(fh, RESOURCE_DMA1_HPS|RESOURCE_DMA2_CLP)) {
  DEB_D("cannot get necessary overlay resources\n");
  return -EBUSY;
 }

 fmt.fmt.win = vv->ov.win;
 err = vidioc_try_fmt_vid_overlay(((void*)0), fh, &fmt);
 if (0 != err) {
  saa7146_res_free(vv->video_fh, RESOURCE_DMA1_HPS|RESOURCE_DMA2_CLP);
  return -EBUSY;
 }
 vv->ov.win = fmt.fmt.win;

 DEB_D("%dx%d+%d+%d 0x%08x field=%s\n",
       vv->ov.win.w.width, vv->ov.win.w.height,
       vv->ov.win.w.left, vv->ov.win.w.top,
       vv->ov_fmt->pixelformat, v4l2_field_names[vv->ov.win.field]);

 if (0 != (ret = saa7146_enable_overlay(fh))) {
  DEB_D("enabling overlay failed: %d\n", ret);
  saa7146_res_free(vv->video_fh, RESOURCE_DMA1_HPS|RESOURCE_DMA2_CLP);
  return ret;
 }

 vv->video_status = STATUS_OVERLAY;
 vv->video_fh = fh;

 return 0;
}
