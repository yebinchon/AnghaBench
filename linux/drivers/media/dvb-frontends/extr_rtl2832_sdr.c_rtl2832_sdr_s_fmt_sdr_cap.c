
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_4__ {scalar_t__ pixelformat; int buffersize; int reserved; } ;
struct TYPE_5__ {TYPE_1__ sdr; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct rtl2832_sdr_dev {int num_formats; scalar_t__ pixelformat; int buffersize; struct vb2_queue vb_queue; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct file {int dummy; } ;
struct TYPE_6__ {scalar_t__ pixelformat; int buffersize; } ;


 int EBUSY ;
 int dev_dbg (int *,char*,char*) ;
 TYPE_3__* formats ;
 int memset (int ,int ,int) ;
 scalar_t__ vb2_is_busy (struct vb2_queue*) ;
 struct rtl2832_sdr_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int rtl2832_sdr_s_fmt_sdr_cap(struct file *file, void *priv,
  struct v4l2_format *f)
{
 struct rtl2832_sdr_dev *dev = video_drvdata(file);
 struct platform_device *pdev = dev->pdev;
 struct vb2_queue *q = &dev->vb_queue;
 int i;

 dev_dbg(&pdev->dev, "pixelformat fourcc %4.4s\n",
  (char *)&f->fmt.sdr.pixelformat);

 if (vb2_is_busy(q))
  return -EBUSY;

 memset(f->fmt.sdr.reserved, 0, sizeof(f->fmt.sdr.reserved));
 for (i = 0; i < dev->num_formats; i++) {
  if (formats[i].pixelformat == f->fmt.sdr.pixelformat) {
   dev->pixelformat = formats[i].pixelformat;
   dev->buffersize = formats[i].buffersize;
   f->fmt.sdr.buffersize = formats[i].buffersize;
   return 0;
  }
 }

 dev->pixelformat = formats[0].pixelformat;
 dev->buffersize = formats[0].buffersize;
 f->fmt.sdr.pixelformat = formats[0].pixelformat;
 f->fmt.sdr.buffersize = formats[0].buffersize;

 return 0;
}
