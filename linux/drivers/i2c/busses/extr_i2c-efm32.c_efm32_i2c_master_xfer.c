
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct efm32_i2c_ddata {int num_msgs; int current_msg; int retval; int done; TYPE_1__ adapter; scalar_t__ current_word; struct i2c_msg* msgs; } ;


 int EBUSY ;
 int EIO ;
 int REG_STATE ;
 int REG_STATUS ;
 int dev_dbg (int *,char*,int ,int ) ;
 int efm32_i2c_read32 (struct efm32_i2c_ddata*,int ) ;
 int efm32_i2c_send_next_msg (struct efm32_i2c_ddata*) ;
 struct efm32_i2c_ddata* i2c_get_adapdata (struct i2c_adapter*) ;
 int reinit_completion (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int efm32_i2c_master_xfer(struct i2c_adapter *adap,
  struct i2c_msg *msgs, int num)
{
 struct efm32_i2c_ddata *ddata = i2c_get_adapdata(adap);
 int ret;

 if (ddata->msgs)
  return -EBUSY;

 ddata->msgs = msgs;
 ddata->num_msgs = num;
 ddata->current_word = 0;
 ddata->current_msg = 0;
 ddata->retval = -EIO;

 reinit_completion(&ddata->done);

 dev_dbg(&ddata->adapter.dev, "state: %08x, status: %08x\n",
   efm32_i2c_read32(ddata, REG_STATE),
   efm32_i2c_read32(ddata, REG_STATUS));

 efm32_i2c_send_next_msg(ddata);

 wait_for_completion(&ddata->done);

 if (ddata->current_msg >= ddata->num_msgs)
  ret = ddata->num_msgs;
 else
  ret = ddata->retval;

 return ret;
}
