
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_lsm6dsx_hw {int fifo_lock; TYPE_2__* settings; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int (* read_fifo ) (struct st_lsm6dsx_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ fifo_ops; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct st_lsm6dsx_hw*) ;

__attribute__((used)) static irqreturn_t st_lsm6dsx_handler_thread(int irq, void *private)
{
 struct st_lsm6dsx_hw *hw = private;
 int count;

 mutex_lock(&hw->fifo_lock);
 count = hw->settings->fifo_ops.read_fifo(hw);
 mutex_unlock(&hw->fifo_lock);

 return count ? IRQ_HANDLED : IRQ_NONE;
}
