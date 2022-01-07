
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int tuner; void* type; int frequency; } ;
struct rtl2832_sdr_dev {int f_tuner; int v4l2_subdev; int f_adc; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_SUBDEV_HAS_OP (int ,int ,int ) ;
 void* V4L2_TUNER_ADC ;
 void* V4L2_TUNER_RF ;
 int dev_dbg (int *,char*,int,void*) ;
 int g_frequency ;
 int tuner ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_frequency*) ;
 struct rtl2832_sdr_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int rtl2832_sdr_g_frequency(struct file *file, void *priv,
  struct v4l2_frequency *f)
{
 struct rtl2832_sdr_dev *dev = video_drvdata(file);
 struct platform_device *pdev = dev->pdev;
 int ret;

 dev_dbg(&pdev->dev, "tuner=%d type=%d\n", f->tuner, f->type);

 if (f->tuner == 0) {
  f->frequency = dev->f_adc;
  f->type = V4L2_TUNER_ADC;
  ret = 0;
 } else if (f->tuner == 1 &&
     V4L2_SUBDEV_HAS_OP(dev->v4l2_subdev, tuner, g_frequency)) {
  f->type = V4L2_TUNER_RF;
  ret = v4l2_subdev_call(dev->v4l2_subdev, tuner, g_frequency, f);
 } else if (f->tuner == 1) {
  f->frequency = dev->f_tuner;
  f->type = V4L2_TUNER_RF;
  ret = 0;
 } else {
  ret = -EINVAL;
 }
 return ret;
}
