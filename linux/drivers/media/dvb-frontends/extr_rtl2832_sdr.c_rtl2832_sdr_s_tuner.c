
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int index; } ;
struct rtl2832_sdr_dev {int v4l2_subdev; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_SUBDEV_HAS_OP (int ,int ,int ) ;
 int dev_dbg (int *,char*) ;
 int s_tuner ;
 int tuner ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_tuner const*) ;
 struct rtl2832_sdr_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int rtl2832_sdr_s_tuner(struct file *file, void *priv,
  const struct v4l2_tuner *v)
{
 struct rtl2832_sdr_dev *dev = video_drvdata(file);
 struct platform_device *pdev = dev->pdev;
 int ret;

 dev_dbg(&pdev->dev, "\n");

 if (v->index == 0) {
  ret = 0;
 } else if (v->index == 1 &&
     V4L2_SUBDEV_HAS_OP(dev->v4l2_subdev, tuner, s_tuner)) {
  ret = v4l2_subdev_call(dev->v4l2_subdev, tuner, s_tuner, v);
 } else if (v->index == 1) {
  ret = 0;
 } else {
  ret = -EINVAL;
 }
 return ret;
}
