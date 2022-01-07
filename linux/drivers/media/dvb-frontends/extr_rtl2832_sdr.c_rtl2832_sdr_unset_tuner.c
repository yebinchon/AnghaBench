
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtl2832_sdr_platform_data {struct dvb_frontend* dvb_frontend; } ;
struct rtl2832_sdr_dev {struct platform_device* pdev; } ;
struct TYPE_6__ {struct rtl2832_sdr_platform_data* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_4__ {int (* sleep ) (struct dvb_frontend*) ;} ;
struct TYPE_5__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; } ;


 int dev_dbg (TYPE_3__*,char*) ;
 int stub1 (struct dvb_frontend*) ;

__attribute__((used)) static void rtl2832_sdr_unset_tuner(struct rtl2832_sdr_dev *dev)
{
 struct platform_device *pdev = dev->pdev;
 struct rtl2832_sdr_platform_data *pdata = pdev->dev.platform_data;
 struct dvb_frontend *fe = pdata->dvb_frontend;

 dev_dbg(&pdev->dev, "\n");

 if (fe->ops.tuner_ops.sleep)
  fe->ops.tuner_ops.sleep(fe);

 return;
}
