
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct goodix_ts_data {TYPE_1__* client; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int GOODIX_READ_COOR_ADDR ;
 int IRQ_HANDLED ;
 int dev_err (int *,char*) ;
 scalar_t__ goodix_i2c_write_u8 (TYPE_1__*,int ,int ) ;
 int goodix_process_events (struct goodix_ts_data*) ;

__attribute__((used)) static irqreturn_t goodix_ts_irq_handler(int irq, void *dev_id)
{
 struct goodix_ts_data *ts = dev_id;

 goodix_process_events(ts);

 if (goodix_i2c_write_u8(ts->client, GOODIX_READ_COOR_ADDR, 0) < 0)
  dev_err(&ts->client->dev, "I2C write end_cmd error\n");

 return IRQ_HANDLED;
}
