
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pixelformat; } ;
struct saa7146_dmaqueue {scalar_t__ curr; } ;
struct saa7146_vv {int video_status; int * ov_suspend; struct saa7146_fh* video_fh; TYPE_1__ video_fmt; struct saa7146_dmaqueue video_dmaq; } ;
struct saa7146_format {int flags; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {int slock; struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;


 int BUG_ON (int) ;
 int DEB_EE (char*,struct saa7146_dev*,struct saa7146_fh*) ;
 int DEB_S (char*) ;
 int EBUSY ;
 int FORMAT_IS_PLANAR ;
 int MASK_20 ;
 int MASK_21 ;
 int MASK_22 ;
 int MASK_27 ;
 int MASK_28 ;
 int MC1 ;
 unsigned int RESOURCE_DMA1_HPS ;
 unsigned int RESOURCE_DMA2_CLP ;
 unsigned int RESOURCE_DMA3_BRS ;
 int SAA7146_IER_DISABLE (struct saa7146_dev*,int ) ;
 int STATUS_CAPTURE ;
 int VIDEOBUF_DONE ;
 int saa7146_buffer_finish (struct saa7146_dev*,struct saa7146_dmaqueue*,int ) ;
 struct saa7146_format* saa7146_format_by_fourcc (struct saa7146_dev*,int ) ;
 int saa7146_res_free (struct saa7146_fh*,unsigned int) ;
 int saa7146_start_preview (int *) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int video_end(struct saa7146_fh *fh, struct file *file)
{
 struct saa7146_dev *dev = fh->dev;
 struct saa7146_vv *vv = dev->vv_data;
 struct saa7146_dmaqueue *q = &vv->video_dmaq;
 struct saa7146_format *fmt = ((void*)0);
 unsigned long flags;
 unsigned int resource;
 u32 dmas = 0;
 DEB_EE("dev:%p, fh:%p\n", dev, fh);

 if ((vv->video_status & STATUS_CAPTURE) != STATUS_CAPTURE) {
  DEB_S("not capturing\n");
  return 0;
 }

 if (vv->video_fh != fh) {
  DEB_S("capturing, but in another open\n");
  return -EBUSY;
 }

 fmt = saa7146_format_by_fourcc(dev, vv->video_fmt.pixelformat);

 BUG_ON(((void*)0) == fmt);

 if (0 != (fmt->flags & FORMAT_IS_PLANAR)) {
  resource = RESOURCE_DMA1_HPS|RESOURCE_DMA2_CLP|RESOURCE_DMA3_BRS;
  dmas = MASK_22 | MASK_21 | MASK_20;
 } else {
  resource = RESOURCE_DMA1_HPS;
  dmas = MASK_22;
 }
 spin_lock_irqsave(&dev->slock,flags);


 saa7146_write(dev, MC1, MASK_28);


 SAA7146_IER_DISABLE(dev, MASK_27);


 saa7146_write(dev, MC1, dmas);

 if (q->curr)
  saa7146_buffer_finish(dev, q, VIDEOBUF_DONE);

 spin_unlock_irqrestore(&dev->slock, flags);

 vv->video_fh = ((void*)0);
 vv->video_status = 0;

 saa7146_res_free(fh, resource);

 if (vv->ov_suspend != ((void*)0)) {
  saa7146_start_preview(vv->ov_suspend);
  vv->ov_suspend = ((void*)0);
 }

 return 0;
}
