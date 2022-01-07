
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8925_onkey_info {int i2c; int dev; int idev; } ;
typedef int irqreturn_t ;


 int HARDRESET_EN ;
 int IRQ_HANDLED ;
 int KEY_POWER ;
 int MAX8925_ON_OFF_STATUS ;
 int MAX8925_SYSENSEL ;
 int SW_INPUT ;
 int dev_dbg (int ,char*,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int max8925_reg_read (int ,int ) ;
 int max8925_set_bits (int ,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t max8925_onkey_handler(int irq, void *data)
{
 struct max8925_onkey_info *info = data;
 int state;

 state = max8925_reg_read(info->i2c, MAX8925_ON_OFF_STATUS);

 input_report_key(info->idev, KEY_POWER, state & SW_INPUT);
 input_sync(info->idev);

 dev_dbg(info->dev, "onkey state:%d\n", state);


 max8925_set_bits(info->i2c, MAX8925_SYSENSEL,
    HARDRESET_EN, HARDRESET_EN);

 return IRQ_HANDLED;
}
