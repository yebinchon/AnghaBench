
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_ctrl {int dummy; } ;
struct rtl2832_sdr_platform_data {struct dvb_frontend* dvb_frontend; } ;
struct rtl2832_sdr_dev {scalar_t__ f_tuner; int v4l2_subdev; int flags; scalar_t__ f_adc; int hdl; struct platform_device* pdev; } ;
struct TYPE_6__ {struct rtl2832_sdr_platform_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_4__ {int (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_5__ {TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {scalar_t__ frequency; scalar_t__ bandwidth_hz; int delivery_system; } ;
struct dvb_frontend {TYPE_2__ ops; struct dtv_frontend_properties dtv_property_cache; } ;


 int POWER_ON ;
 int SYS_DVBT ;
 int V4L2_CID_RF_TUNER_BANDWIDTH ;
 int V4L2_CID_RF_TUNER_BANDWIDTH_AUTO ;
 int V4L2_SUBDEV_HAS_OP (int ,int ,int ) ;
 int dev_dbg (TYPE_3__*,char*,scalar_t__,scalar_t__) ;
 int s_frequency ;
 int stub1 (struct dvb_frontend*) ;
 int test_bit (int ,int *) ;
 int tuner ;
 struct v4l2_ctrl* v4l2_ctrl_find (int *,int ) ;
 scalar_t__ v4l2_ctrl_g_ctrl (struct v4l2_ctrl*) ;
 int v4l2_ctrl_s_ctrl (struct v4l2_ctrl*,scalar_t__) ;

__attribute__((used)) static int rtl2832_sdr_set_tuner_freq(struct rtl2832_sdr_dev *dev)
{
 struct platform_device *pdev = dev->pdev;
 struct rtl2832_sdr_platform_data *pdata = pdev->dev.platform_data;
 struct dvb_frontend *fe = pdata->dvb_frontend;
 struct dtv_frontend_properties *c = &fe->dtv_property_cache;
 struct v4l2_ctrl *bandwidth_auto;
 struct v4l2_ctrl *bandwidth;




 if (dev->f_tuner == 0)
  return 0;




 bandwidth_auto = v4l2_ctrl_find(&dev->hdl,
     V4L2_CID_RF_TUNER_BANDWIDTH_AUTO);
 bandwidth = v4l2_ctrl_find(&dev->hdl, V4L2_CID_RF_TUNER_BANDWIDTH);
 if (v4l2_ctrl_g_ctrl(bandwidth_auto)) {
  c->bandwidth_hz = dev->f_adc;
  v4l2_ctrl_s_ctrl(bandwidth, dev->f_adc);
 } else {
  c->bandwidth_hz = v4l2_ctrl_g_ctrl(bandwidth);
 }

 c->frequency = dev->f_tuner;
 c->delivery_system = SYS_DVBT;

 dev_dbg(&pdev->dev, "frequency=%u bandwidth=%d\n",
  c->frequency, c->bandwidth_hz);

 if (!test_bit(POWER_ON, &dev->flags))
  return 0;

 if (!V4L2_SUBDEV_HAS_OP(dev->v4l2_subdev, tuner, s_frequency)) {
  if (fe->ops.tuner_ops.set_params)
   fe->ops.tuner_ops.set_params(fe);
 }

 return 0;
}
