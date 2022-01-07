
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bu21029_ts_data {int timer; int client; } ;
typedef int irqreturn_t ;
typedef int buf ;


 int BU21029_AUTOSCAN ;
 int BUF_LEN ;
 int IRQ_HANDLED ;
 int PEN_UP_TIMEOUT_MS ;
 int bu21029_touch_report (struct bu21029_ts_data*,int *) ;
 int i2c_smbus_read_i2c_block_data (int ,int ,int,int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static irqreturn_t bu21029_touch_soft_irq(int irq, void *data)
{
 struct bu21029_ts_data *bu21029 = data;
 u8 buf[BUF_LEN];
 int error;





 error = i2c_smbus_read_i2c_block_data(bu21029->client, BU21029_AUTOSCAN,
           sizeof(buf), buf);
 if (error < 0)
  goto out;

 bu21029_touch_report(bu21029, buf);


 mod_timer(&bu21029->timer,
    jiffies + msecs_to_jiffies(PEN_UP_TIMEOUT_MS));

out:
 return IRQ_HANDLED;
}
