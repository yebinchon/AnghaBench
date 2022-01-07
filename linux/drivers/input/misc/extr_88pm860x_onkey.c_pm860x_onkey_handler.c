
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_onkey_info {int i2c; int idev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 int LONG_ONKEY_EN ;
 int ONKEY_STATUS ;
 int PM8607_STATUS_2 ;
 int PM8607_WAKEUP ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int pm860x_reg_read (int ,int ) ;
 int pm860x_set_bits (int ,int ,int,int ) ;

__attribute__((used)) static irqreturn_t pm860x_onkey_handler(int irq, void *data)
{
 struct pm860x_onkey_info *info = data;
 int ret;

 ret = pm860x_reg_read(info->i2c, PM8607_STATUS_2);
 ret &= ONKEY_STATUS;
 input_report_key(info->idev, KEY_POWER, ret);
 input_sync(info->idev);


 pm860x_set_bits(info->i2c, PM8607_WAKEUP, 3, LONG_ONKEY_EN);
 return IRQ_HANDLED;
}
