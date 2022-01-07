
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct rtl2832_sdr_platform_data {int dvb_frontend; struct dvb_usb_device* dvb_usb_device; } ;
struct rtl2832_sdr_dev {int v4l2_lock; int flags; int v4l2_subdev; struct platform_device* pdev; } ;
struct TYPE_4__ {struct rtl2832_sdr_platform_data* platform_data; } ;
struct platform_device {TYPE_2__ dev; } ;
struct dvb_usb_device {TYPE_1__* props; } ;
struct TYPE_3__ {int (* power_ctrl ) (struct dvb_usb_device*,int ) ;int (* frontend_ctrl ) (int ,int ) ;} ;


 int POWER_ON ;
 scalar_t__ V4L2_SUBDEV_HAS_OP (int ,int ,int ) ;
 int clear_bit (int ,int *) ;
 int core ;
 int dev_dbg (TYPE_2__*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtl2832_sdr_cleanup_queued_bufs (struct rtl2832_sdr_dev*) ;
 int rtl2832_sdr_free_stream_bufs (struct rtl2832_sdr_dev*) ;
 int rtl2832_sdr_free_urbs (struct rtl2832_sdr_dev*) ;
 int rtl2832_sdr_kill_urbs (struct rtl2832_sdr_dev*) ;
 int rtl2832_sdr_unset_adc (struct rtl2832_sdr_dev*) ;
 int rtl2832_sdr_unset_tuner (struct rtl2832_sdr_dev*) ;
 int s_power ;
 int stub1 (int ,int ) ;
 int stub2 (struct dvb_usb_device*,int ) ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 struct rtl2832_sdr_dev* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void rtl2832_sdr_stop_streaming(struct vb2_queue *vq)
{
 struct rtl2832_sdr_dev *dev = vb2_get_drv_priv(vq);
 struct platform_device *pdev = dev->pdev;
 struct rtl2832_sdr_platform_data *pdata = pdev->dev.platform_data;
 struct dvb_usb_device *d = pdata->dvb_usb_device;

 dev_dbg(&pdev->dev, "\n");

 mutex_lock(&dev->v4l2_lock);

 rtl2832_sdr_kill_urbs(dev);
 rtl2832_sdr_free_urbs(dev);
 rtl2832_sdr_free_stream_bufs(dev);
 rtl2832_sdr_cleanup_queued_bufs(dev);
 rtl2832_sdr_unset_adc(dev);


 if (V4L2_SUBDEV_HAS_OP(dev->v4l2_subdev, core, s_power))
  v4l2_subdev_call(dev->v4l2_subdev, core, s_power, 0);
 else
  rtl2832_sdr_unset_tuner(dev);

 clear_bit(POWER_ON, &dev->flags);


 if (d->props->frontend_ctrl)
  d->props->frontend_ctrl(pdata->dvb_frontend, 0);

 if (d->props->power_ctrl)
  d->props->power_ctrl(d, 0);

 mutex_unlock(&dev->v4l2_lock);
}
