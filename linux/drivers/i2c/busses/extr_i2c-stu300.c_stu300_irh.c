
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stu300_dev {scalar_t__ cmd_err; int clk; int cmd_issue_lock; int cmd_complete; int cmd_event; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ STU300_ERROR_NONE ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int complete (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stu300_event_occurred (struct stu300_dev*,int ) ;

__attribute__((used)) static irqreturn_t stu300_irh(int irq, void *data)
{
 struct stu300_dev *dev = data;
 int res;


 clk_enable(dev->clk);


 spin_lock(&dev->cmd_issue_lock);

 res = stu300_event_occurred(dev, dev->cmd_event);
 if (res || dev->cmd_err != STU300_ERROR_NONE)
  complete(&dev->cmd_complete);

 spin_unlock(&dev->cmd_issue_lock);

 clk_disable(dev->clk);

 return IRQ_HANDLED;
}
