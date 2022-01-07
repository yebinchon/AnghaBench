
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_lsm6dsx_hw {scalar_t__ sip; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;

__attribute__((used)) static irqreturn_t st_lsm6dsx_handler_irq(int irq, void *private)
{
 struct st_lsm6dsx_hw *hw = private;

 return hw->sip > 0 ? IRQ_WAKE_THREAD : IRQ_NONE;
}
