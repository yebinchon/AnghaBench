
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct v4l2_vbi_format {int sampling_rate; int offset; int samples_per_line; int* start; int* count; int sample_format; } ;
struct v4l2_pix_format {int width; int height; int bytesperline; int sizeimage; int colorspace; int field; int pixelformat; } ;
struct v4l2_ctrl_handler {int error; } ;
struct TYPE_11__ {int width; int height; int bytesperline; int sizeimage; int colorspace; int pixelformat; } ;
struct TYPE_12__ {int flags; int capability; TYPE_3__ fmt; } ;
struct TYPE_9__ {int * cpu_addr; int dma_handle; } ;
struct saa7146_vv {TYPE_4__ ov_fb; int vbi_read_timeout; struct v4l2_vbi_format vbi_fmt; struct v4l2_pix_format video_fmt; TYPE_2__* standard; TYPE_1__ d_clipping; } ;
struct saa7146_ext_vv {int capabilities; int * core_ops; int vbi_ops; int vid_ops; } ;
struct TYPE_13__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct saa7146_dev {int * vv_callback; struct saa7146_vv* vv_data; struct saa7146_ext_vv* ext_vv_data; TYPE_8__* pci; TYPE_5__ v4l2_dev; struct v4l2_ctrl_handler ctrl_handler; } ;
struct TYPE_16__ {int dev; } ;
struct TYPE_15__ {int (* init ) (struct saa7146_dev*,struct saa7146_vv*) ;} ;
struct TYPE_14__ {int (* init ) (struct saa7146_dev*,struct saa7146_vv*) ;} ;
struct TYPE_10__ {int h_max_out; int v_max_out; } ;


 int BCS_CTRL ;
 int DEB_EE (char*,struct saa7146_dev*) ;
 int ENOMEM ;
 int ERR (char*) ;
 int GFP_KERNEL ;
 int MASK_10 ;
 int MASK_26 ;
 int MC1 ;
 int SAA7146_CLIPPING_MEM ;
 int V4L2_CAP_VBI_CAPTURE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_VFLIP ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FBUF_CAP_LIST_CLIPPING ;
 int V4L2_FBUF_FLAG_PRIMARY ;
 int V4L2_FIELD_ANY ;
 int V4L2_PIX_FMT_BGR24 ;
 int V4L2_PIX_FMT_GREY ;
 int V4L2_PIX_FMT_RGB565 ;
 int kfree (struct saa7146_vv*) ;
 struct saa7146_vv* kzalloc (int,int ) ;
 int * pci_zalloc_consistent (TYPE_8__*,int ,int *) ;
 int saa7146_ctrl_ops ;
 int saa7146_vbi_ioctl_ops ;
 TYPE_7__ saa7146_vbi_uops ;
 int saa7146_video_ioctl_ops ;
 TYPE_6__ saa7146_video_uops ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int stub1 (struct saa7146_dev*,struct saa7146_vv*) ;
 int stub2 (struct saa7146_dev*,struct saa7146_vv*) ;
 int timer_setup (int *,int *,int ) ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;
 int v4l2_device_register (int *,TYPE_5__*) ;
 int vv_callback ;

int saa7146_vv_init(struct saa7146_dev* dev, struct saa7146_ext_vv *ext_vv)
{
 struct v4l2_ctrl_handler *hdl = &dev->ctrl_handler;
 struct v4l2_pix_format *fmt;
 struct v4l2_vbi_format *vbi;
 struct saa7146_vv *vv;
 int err;

 err = v4l2_device_register(&dev->pci->dev, &dev->v4l2_dev);
 if (err)
  return err;

 v4l2_ctrl_handler_init(hdl, 6);
 v4l2_ctrl_new_std(hdl, &saa7146_ctrl_ops,
  V4L2_CID_BRIGHTNESS, 0, 255, 1, 128);
 v4l2_ctrl_new_std(hdl, &saa7146_ctrl_ops,
  V4L2_CID_CONTRAST, 0, 127, 1, 64);
 v4l2_ctrl_new_std(hdl, &saa7146_ctrl_ops,
  V4L2_CID_SATURATION, 0, 127, 1, 64);
 v4l2_ctrl_new_std(hdl, &saa7146_ctrl_ops,
  V4L2_CID_VFLIP, 0, 1, 1, 0);
 v4l2_ctrl_new_std(hdl, &saa7146_ctrl_ops,
  V4L2_CID_HFLIP, 0, 1, 1, 0);
 if (hdl->error) {
  err = hdl->error;
  v4l2_ctrl_handler_free(hdl);
  return err;
 }
 dev->v4l2_dev.ctrl_handler = hdl;

 vv = kzalloc(sizeof(struct saa7146_vv), GFP_KERNEL);
 if (vv == ((void*)0)) {
  ERR("out of memory. aborting.\n");
  v4l2_ctrl_handler_free(hdl);
  return -ENOMEM;
 }
 ext_vv->vid_ops = saa7146_video_ioctl_ops;
 ext_vv->vbi_ops = saa7146_vbi_ioctl_ops;
 ext_vv->core_ops = &saa7146_video_ioctl_ops;

 DEB_EE("dev:%p\n", dev);


 saa7146_write(dev, BCS_CTRL, 0x80400040);


 saa7146_write(dev, MC1, (MASK_10 | MASK_26));




 dev->ext_vv_data = ext_vv;

 vv->d_clipping.cpu_addr =
  pci_zalloc_consistent(dev->pci, SAA7146_CLIPPING_MEM,
          &vv->d_clipping.dma_handle);
 if( ((void*)0) == vv->d_clipping.cpu_addr ) {
  ERR("out of memory. aborting.\n");
  kfree(vv);
  v4l2_ctrl_handler_free(hdl);
  return -1;
 }

 saa7146_video_uops.init(dev,vv);
 if (dev->ext_vv_data->capabilities & V4L2_CAP_VBI_CAPTURE)
  saa7146_vbi_uops.init(dev,vv);

 vv->ov_fb.fmt.width = vv->standard->h_max_out;
 vv->ov_fb.fmt.height = vv->standard->v_max_out;
 vv->ov_fb.fmt.pixelformat = V4L2_PIX_FMT_RGB565;
 vv->ov_fb.fmt.bytesperline = 2 * vv->ov_fb.fmt.width;
 vv->ov_fb.fmt.sizeimage = vv->ov_fb.fmt.bytesperline * vv->ov_fb.fmt.height;
 vv->ov_fb.fmt.colorspace = V4L2_COLORSPACE_SRGB;

 fmt = &vv->video_fmt;
 fmt->width = 384;
 fmt->height = 288;
 fmt->pixelformat = V4L2_PIX_FMT_BGR24;
 fmt->field = V4L2_FIELD_ANY;
 fmt->colorspace = V4L2_COLORSPACE_SMPTE170M;
 fmt->bytesperline = 3 * fmt->width;
 fmt->sizeimage = fmt->bytesperline * fmt->height;

 vbi = &vv->vbi_fmt;
 vbi->sampling_rate = 27000000;
 vbi->offset = 248;
 vbi->samples_per_line = 720 * 2;
 vbi->sample_format = V4L2_PIX_FMT_GREY;


 vbi->start[0] = 5;
 vbi->count[0] = 16;
 vbi->start[1] = 312;
 vbi->count[1] = 16;

 timer_setup(&vv->vbi_read_timeout, ((void*)0), 0);

 vv->ov_fb.capability = V4L2_FBUF_CAP_LIST_CLIPPING;
 vv->ov_fb.flags = V4L2_FBUF_FLAG_PRIMARY;
 dev->vv_data = vv;
 dev->vv_callback = &vv_callback;

 return 0;
}
