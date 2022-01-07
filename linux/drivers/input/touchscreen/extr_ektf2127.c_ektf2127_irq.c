
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ektf2127_ts {TYPE_1__* client; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct device dev; } ;



 char EKTF2127_ENV_NOISY ;



 int EKTF2127_TOUCH_REPORT_SIZE ;
 int IRQ_HANDLED ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,char) ;
 int ektf2127_report_event (struct ektf2127_ts*,char*) ;
 int i2c_master_recv (TYPE_1__*,char*,int) ;

__attribute__((used)) static irqreturn_t ektf2127_irq(int irq, void *dev_id)
{
 struct ektf2127_ts *ts = dev_id;
 struct device *dev = &ts->client->dev;
 char buf[EKTF2127_TOUCH_REPORT_SIZE];
 int ret;

 ret = i2c_master_recv(ts->client, buf, EKTF2127_TOUCH_REPORT_SIZE);
 if (ret != EKTF2127_TOUCH_REPORT_SIZE) {
  dev_err(dev, "Error reading touch data: %d\n", ret);
  goto out;
 }

 switch (buf[0]) {
 case 128:
  ektf2127_report_event(ts, buf);
  break;

 case 129:
  if (buf[1] == EKTF2127_ENV_NOISY)
   dev_dbg(dev, "Environment is electrically noisy\n");
  break;

 case 130:
 case 131:
  break;

 default:
  dev_err(dev, "Unexpected packet header byte %#02x\n", buf[0]);
  break;
 }

out:
 return IRQ_HANDLED;
}
