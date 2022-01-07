
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct st_lsm6dsx_hw {int fifo_lock; TYPE_2__* settings; } ;
struct TYPE_3__ {int (* read_fifo ) (struct st_lsm6dsx_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ fifo_ops; } ;


 int ST_LSM6DSX_FIFO_BYPASS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int st_lsm6dsx_set_fifo_mode (struct st_lsm6dsx_hw*,int ) ;
 int stub1 (struct st_lsm6dsx_hw*) ;

int st_lsm6dsx_flush_fifo(struct st_lsm6dsx_hw *hw)
{
 int err;

 mutex_lock(&hw->fifo_lock);

 hw->settings->fifo_ops.read_fifo(hw);
 err = st_lsm6dsx_set_fifo_mode(hw, ST_LSM6DSX_FIFO_BYPASS);

 mutex_unlock(&hw->fifo_lock);

 return err;
}
