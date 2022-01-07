
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retu_dev {int dummy; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int KEY_POWER ;
 int RETU_REG_STATUS ;
 int RETU_STATUS_PWRONX ;
 struct retu_dev* input_get_drvdata (struct input_dev*) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int retu_read (struct retu_dev*,int ) ;

__attribute__((used)) static irqreturn_t retu_pwrbutton_irq(int irq, void *_pwr)
{
 struct input_dev *idev = _pwr;
 struct retu_dev *rdev = input_get_drvdata(idev);
 bool state;

 state = !(retu_read(rdev, RETU_REG_STATUS) & RETU_STATUS_PWRONX);
 input_report_key(idev, KEY_POWER, state);
 input_sync(idev);

 return IRQ_HANDLED;
}
