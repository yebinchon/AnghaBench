
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct elan_tp_data {TYPE_2__* client; TYPE_1__* ops; int fw_completion; scalar_t__ in_fw_update; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int (* get_report ) (TYPE_2__*,int*) ;} ;


 int ETP_MAX_REPORT_LEN ;

 size_t ETP_REPORT_ID_OFFSET ;

 int IRQ_HANDLED ;
 int complete (int *) ;
 int dev_err (struct device*,char*,int) ;
 int elan_report_absolute (struct elan_tp_data*,int*) ;
 int elan_report_trackpoint (struct elan_tp_data*,int*) ;
 int pm_wakeup_event (struct device*,int ) ;
 int stub1 (TYPE_2__*,int*) ;

__attribute__((used)) static irqreturn_t elan_isr(int irq, void *dev_id)
{
 struct elan_tp_data *data = dev_id;
 struct device *dev = &data->client->dev;
 int error;
 u8 report[ETP_MAX_REPORT_LEN];






 if (data->in_fw_update) {
  complete(&data->fw_completion);
  goto out;
 }

 error = data->ops->get_report(data->client, report);
 if (error)
  goto out;

 pm_wakeup_event(dev, 0);

 switch (report[ETP_REPORT_ID_OFFSET]) {
 case 129:
  elan_report_absolute(data, report);
  break;
 case 128:
  elan_report_trackpoint(data, report);
  break;
 default:
  dev_err(dev, "invalid report id data (%x)\n",
   report[ETP_REPORT_ID_OFFSET]);
 }

out:
 return IRQ_HANDLED;
}
