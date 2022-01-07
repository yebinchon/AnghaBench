
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct saa7146_vv {scalar_t__ last_field; } ;
struct saa7146_format {int trans; } ;
struct TYPE_4__ {int dma_handle; } ;
struct saa7146_dev {TYPE_2__ d_rps0; struct saa7146_vv* vv_data; } ;
struct saa7146_buf {TYPE_1__* fmt; } ;
struct TYPE_3__ {int field; int height; int width; int pixelformat; } ;


 int DEB_CAP (char*,...) ;
 scalar_t__ IS_PLANAR (int ) ;
 int MASK_12 ;
 int MASK_27 ;
 int MASK_28 ;
 int MC1 ;
 int MC2 ;
 int PROT_ADDR1 ;
 int RPS_ADDR0 ;
 scalar_t__ V4L2_FIELD_BOTTOM ;
 scalar_t__ V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_FIELD_TOP ;
 int calculate_video_dma_grab_packed (struct saa7146_dev*,struct saa7146_buf*) ;
 int calculate_video_dma_grab_planar (struct saa7146_dev*,struct saa7146_buf*) ;
 int program_capture_engine (struct saa7146_dev*,int) ;
 int saa7146_disable_clipping (struct saa7146_dev*) ;
 struct saa7146_format* saa7146_format_by_fourcc (struct saa7146_dev*,int ) ;
 scalar_t__ saa7146_read (struct saa7146_dev*,int ) ;
 int saa7146_set_output_format (struct saa7146_dev*,int ) ;
 int saa7146_set_window (struct saa7146_dev*,int ,int ,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;

void saa7146_set_capture(struct saa7146_dev *dev, struct saa7146_buf *buf, struct saa7146_buf *next)
{
 struct saa7146_format *sfmt = saa7146_format_by_fourcc(dev,buf->fmt->pixelformat);
 struct saa7146_vv *vv = dev->vv_data;
 u32 vdma1_prot_addr;

 DEB_CAP("buf:%p, next:%p\n", buf, next);

 vdma1_prot_addr = saa7146_read(dev, PROT_ADDR1);
 if( 0 == vdma1_prot_addr ) {

  DEB_CAP("forcing sync to new frame\n");
  saa7146_write(dev, MC2, MASK_27 );
 }

 saa7146_set_window(dev, buf->fmt->width, buf->fmt->height, buf->fmt->field);
 saa7146_set_output_format(dev, sfmt->trans);
 saa7146_disable_clipping(dev);

 if ( vv->last_field == V4L2_FIELD_INTERLACED ) {
 } else if ( vv->last_field == V4L2_FIELD_TOP ) {
  vv->last_field = V4L2_FIELD_BOTTOM;
 } else if ( vv->last_field == V4L2_FIELD_BOTTOM ) {
  vv->last_field = V4L2_FIELD_TOP;
 }

 if( 0 != IS_PLANAR(sfmt->trans)) {
  calculate_video_dma_grab_planar(dev, buf);
  program_capture_engine(dev,1);
 } else {
  calculate_video_dma_grab_packed(dev, buf);
  program_capture_engine(dev,0);
 }
 saa7146_write(dev, RPS_ADDR0, dev->d_rps0.dma_handle);


 saa7146_write(dev, MC1, (MASK_12 | MASK_28));
}
