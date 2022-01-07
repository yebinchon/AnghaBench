
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qt2160_data {int dwork; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mod_delayed_work (int ,int *,int ) ;
 int system_wq ;

__attribute__((used)) static irqreturn_t qt2160_irq(int irq, void *_qt2160)
{
 struct qt2160_data *qt2160 = _qt2160;

 mod_delayed_work(system_wq, &qt2160->dwork, 0);

 return IRQ_HANDLED;
}
