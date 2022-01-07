
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pm80x_onkey_info {TYPE_2__* idev; int map; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KEY_POWER ;
 unsigned int PM800_ONKEY_STS1 ;
 int PM800_STATUS_1 ;
 int dev_err (int ,char*,int) ;
 int input_report_key (TYPE_2__*,int ,unsigned int) ;
 int input_sync (TYPE_2__*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static irqreturn_t pm80x_onkey_handler(int irq, void *data)
{
 struct pm80x_onkey_info *info = data;
 int ret = 0;
 unsigned int val;

 ret = regmap_read(info->map, PM800_STATUS_1, &val);
 if (ret < 0) {
  dev_err(info->idev->dev.parent, "failed to read status: %d\n", ret);
  return IRQ_NONE;
 }
 val &= PM800_ONKEY_STS1;

 input_report_key(info->idev, KEY_POWER, val);
 input_sync(info->idev);

 return IRQ_HANDLED;
}
