
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pixelformat; } ;
struct saa7146_vv {int video_status; struct saa7146_fh* video_fh; struct saa7146_fh* ov_suspend; TYPE_1__ video_fmt; } ;
struct saa7146_format {int flags; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;


 int BUG_ON (int) ;
 int DEB_D (char*) ;
 int DEB_EE (char*,struct saa7146_dev*,struct saa7146_fh*) ;
 int DEB_S (char*,...) ;
 int EBUSY ;
 int FORMAT_IS_PLANAR ;
 int MASK_27 ;
 int MC2 ;
 unsigned int RESOURCE_DMA1_HPS ;
 unsigned int RESOURCE_DMA2_CLP ;
 unsigned int RESOURCE_DMA3_BRS ;
 int SAA7146_IER_ENABLE (struct saa7146_dev*,int ) ;
 int STATUS_CAPTURE ;
 int STATUS_OVERLAY ;
 struct saa7146_format* saa7146_format_by_fourcc (struct saa7146_dev*,int ) ;
 int saa7146_res_get (struct saa7146_fh*,unsigned int) ;
 int saa7146_start_preview (struct saa7146_fh*) ;
 int saa7146_stop_preview (struct saa7146_fh*) ;
 int saa7146_write (struct saa7146_dev*,int ,int ) ;

__attribute__((used)) static int video_begin(struct saa7146_fh *fh)
{
 struct saa7146_dev *dev = fh->dev;
 struct saa7146_vv *vv = dev->vv_data;
 struct saa7146_format *fmt = ((void*)0);
 unsigned int resource;
 int ret = 0, err = 0;

 DEB_EE("dev:%p, fh:%p\n", dev, fh);

 if ((vv->video_status & STATUS_CAPTURE) != 0) {
  if (vv->video_fh == fh) {
   DEB_S("already capturing\n");
   return 0;
  }
  DEB_S("already capturing in another open\n");
  return -EBUSY;
 }

 if ((vv->video_status & STATUS_OVERLAY) != 0) {
  DEB_S("warning: suspending overlay video for streaming capture\n");
  vv->ov_suspend = vv->video_fh;
  err = saa7146_stop_preview(vv->video_fh);
  if (0 != err) {
   DEB_D("suspending video failed. aborting\n");
   return err;
  }
 }

 fmt = saa7146_format_by_fourcc(dev, vv->video_fmt.pixelformat);

 BUG_ON(((void*)0) == fmt);

 if (0 != (fmt->flags & FORMAT_IS_PLANAR)) {
  resource = RESOURCE_DMA1_HPS|RESOURCE_DMA2_CLP|RESOURCE_DMA3_BRS;
 } else {
  resource = RESOURCE_DMA1_HPS;
 }

 ret = saa7146_res_get(fh, resource);
 if (0 == ret) {
  DEB_S("cannot get capture resource %d\n", resource);
  if (vv->ov_suspend != ((void*)0)) {
   saa7146_start_preview(vv->ov_suspend);
   vv->ov_suspend = ((void*)0);
  }
  return -EBUSY;
 }


 saa7146_write(dev, MC2, MASK_27 );


 SAA7146_IER_ENABLE(dev, MASK_27);

 vv->video_fh = fh;
 vv->video_status = STATUS_CAPTURE;

 return 0;
}
