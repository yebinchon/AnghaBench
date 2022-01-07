
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct rtl2832_sdr_platform_data {int dvb_frontend; struct dvb_usb_device* dvb_usb_device; } ;
struct rtl2832_sdr_dev {int v4l2_lock; scalar_t__ sequence; int v4l2_subdev; int flags; int udev; struct platform_device* pdev; } ;
struct TYPE_4__ {struct rtl2832_sdr_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct dvb_usb_device {TYPE_1__* props; } ;
struct TYPE_3__ {int (* frontend_ctrl ) (int ,int) ;int (* power_ctrl ) (struct dvb_usb_device*,int) ;} ;


 int ENODEV ;
 int ERESTARTSYS ;
 int POWER_ON ;
 scalar_t__ V4L2_SUBDEV_HAS_OP (int ,int ,int ) ;
 int core ;
 int dev_dbg (TYPE_2__*,char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rtl2832_sdr_alloc_stream_bufs (struct rtl2832_sdr_dev*) ;
 int rtl2832_sdr_alloc_urbs (struct rtl2832_sdr_dev*) ;
 int rtl2832_sdr_set_adc (struct rtl2832_sdr_dev*) ;
 int rtl2832_sdr_set_tuner (struct rtl2832_sdr_dev*) ;
 int rtl2832_sdr_set_tuner_freq (struct rtl2832_sdr_dev*) ;
 int rtl2832_sdr_submit_urbs (struct rtl2832_sdr_dev*) ;
 int s_power ;
 int set_bit (int ,int *) ;
 int stub1 (struct dvb_usb_device*,int) ;
 int stub2 (int ,int) ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 struct rtl2832_sdr_dev* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int rtl2832_sdr_start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct rtl2832_sdr_dev *dev = vb2_get_drv_priv(vq);
 struct platform_device *pdev = dev->pdev;
 struct rtl2832_sdr_platform_data *pdata = pdev->dev.platform_data;
 struct dvb_usb_device *d = pdata->dvb_usb_device;
 int ret;

 dev_dbg(&pdev->dev, "\n");

 if (!dev->udev)
  return -ENODEV;

 if (mutex_lock_interruptible(&dev->v4l2_lock))
  return -ERESTARTSYS;

 if (d->props->power_ctrl)
  d->props->power_ctrl(d, 1);


 if (d->props->frontend_ctrl)
  d->props->frontend_ctrl(pdata->dvb_frontend, 1);

 set_bit(POWER_ON, &dev->flags);


 if (V4L2_SUBDEV_HAS_OP(dev->v4l2_subdev, core, s_power))
  ret = v4l2_subdev_call(dev->v4l2_subdev, core, s_power, 1);
 else
  ret = rtl2832_sdr_set_tuner(dev);
 if (ret)
  goto err;

 ret = rtl2832_sdr_set_tuner_freq(dev);
 if (ret)
  goto err;

 ret = rtl2832_sdr_set_adc(dev);
 if (ret)
  goto err;

 ret = rtl2832_sdr_alloc_stream_bufs(dev);
 if (ret)
  goto err;

 ret = rtl2832_sdr_alloc_urbs(dev);
 if (ret)
  goto err;

 dev->sequence = 0;

 ret = rtl2832_sdr_submit_urbs(dev);
 if (ret)
  goto err;

err:
 mutex_unlock(&dev->v4l2_lock);

 return ret;
}
