
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {scalar_t__ index; int pixelformat; } ;
struct rtl2832_sdr_dev {scalar_t__ num_formats; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int pixelformat; } ;


 int EINVAL ;
 int dev_dbg (int *,char*) ;
 TYPE_1__* formats ;
 struct rtl2832_sdr_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int rtl2832_sdr_enum_fmt_sdr_cap(struct file *file, void *priv,
  struct v4l2_fmtdesc *f)
{
 struct rtl2832_sdr_dev *dev = video_drvdata(file);
 struct platform_device *pdev = dev->pdev;

 dev_dbg(&pdev->dev, "\n");

 if (f->index >= dev->num_formats)
  return -EINVAL;

 f->pixelformat = formats[f->index].pixelformat;

 return 0;
}
