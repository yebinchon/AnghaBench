
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency_band {int tuner; size_t index; int type; } ;
struct rtl2832_sdr_dev {int v4l2_subdev; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct file {int dummy; } ;


 size_t ARRAY_SIZE (struct v4l2_frequency_band*) ;
 int EINVAL ;
 scalar_t__ V4L2_SUBDEV_HAS_OP (int ,int ,int ) ;
 struct v4l2_frequency_band* bands_adc ;
 struct v4l2_frequency_band* bands_fm ;
 int dev_dbg (int *,char*,int,int ,size_t) ;
 int enum_freq_bands ;
 int tuner ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_frequency_band*) ;
 struct rtl2832_sdr_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int rtl2832_sdr_enum_freq_bands(struct file *file, void *priv,
  struct v4l2_frequency_band *band)
{
 struct rtl2832_sdr_dev *dev = video_drvdata(file);
 struct platform_device *pdev = dev->pdev;
 int ret;

 dev_dbg(&pdev->dev, "tuner=%d type=%d index=%d\n",
  band->tuner, band->type, band->index);

 if (band->tuner == 0) {
  if (band->index >= ARRAY_SIZE(bands_adc))
   return -EINVAL;

  *band = bands_adc[band->index];
  ret = 0;
 } else if (band->tuner == 1 &&
     V4L2_SUBDEV_HAS_OP(dev->v4l2_subdev, tuner, enum_freq_bands)) {
  ret = v4l2_subdev_call(dev->v4l2_subdev, tuner, enum_freq_bands, band);
 } else if (band->tuner == 1) {
  if (band->index >= ARRAY_SIZE(bands_fm))
   return -EINVAL;

  *band = bands_fm[band->index];
  ret = 0;
 } else {
  ret = -EINVAL;
 }
 return ret;
}
