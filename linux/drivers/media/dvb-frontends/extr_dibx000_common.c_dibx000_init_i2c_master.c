
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct i2c_msg {int dummy; } ;
struct TYPE_7__ {int parent; } ;
struct i2c_adapter {TYPE_2__ dev; } ;
struct TYPE_6__ {int parent; } ;
struct TYPE_9__ {TYPE_1__ dev; } ;
struct dibx000_i2c_master {int i2c_addr; int base_reg; int i2c_buffer_lock; TYPE_3__* msg; int i2c_write_buffer; TYPE_5__ master_i2c_adap_gpio67; struct i2c_adapter* i2c_adap; TYPE_5__ master_i2c_adap_gpio34; TYPE_5__ master_i2c_adap_gpio12; TYPE_5__ gated_tuner_i2c_adap; scalar_t__ device_rev; } ;
struct TYPE_8__ {int addr; int len; int buf; scalar_t__ flags; } ;


 scalar_t__ DIB7000P ;
 scalar_t__ DIB8000 ;
 int EINVAL ;
 int dibx000_i2c_gate_ctrl (struct dibx000_i2c_master*,int ,int ,int ) ;
 int dibx000_i2c_gated_gpio67_algo ;
 int dibx000_i2c_gated_tuner_algo ;
 int dibx000_i2c_master_gpio12_xfer_algo ;
 int dibx000_i2c_master_gpio34_xfer_algo ;
 int dprintk (char*) ;
 scalar_t__ i2c_adapter_init (TYPE_5__*,int *,char*,struct dibx000_i2c_master*) ;
 int i2c_transfer (struct i2c_adapter*,TYPE_3__*,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int mutex_init (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;

int dibx000_init_i2c_master(struct dibx000_i2c_master *mst, u16 device_rev,
    struct i2c_adapter *i2c_adap, u8 i2c_addr)
{
 int ret;

 mutex_init(&mst->i2c_buffer_lock);
 if (mutex_lock_interruptible(&mst->i2c_buffer_lock) < 0) {
  dprintk("could not acquire lock\n");
  return -EINVAL;
 }
 memset(mst->msg, 0, sizeof(struct i2c_msg));
 mst->msg[0].addr = i2c_addr >> 1;
 mst->msg[0].flags = 0;
 mst->msg[0].buf = mst->i2c_write_buffer;
 mst->msg[0].len = 4;

 mst->device_rev = device_rev;
 mst->i2c_adap = i2c_adap;
 mst->i2c_addr = i2c_addr >> 1;

 if (device_rev == DIB7000P || device_rev == DIB8000)
  mst->base_reg = 1024;
 else
  mst->base_reg = 768;

 mst->gated_tuner_i2c_adap.dev.parent = mst->i2c_adap->dev.parent;
 if (i2c_adapter_init
   (&mst->gated_tuner_i2c_adap, &dibx000_i2c_gated_tuner_algo,
    "DiBX000 tuner I2C bus", mst) != 0)
  pr_err("could not initialize the tuner i2c_adapter\n");

 mst->master_i2c_adap_gpio12.dev.parent = mst->i2c_adap->dev.parent;
 if (i2c_adapter_init
   (&mst->master_i2c_adap_gpio12, &dibx000_i2c_master_gpio12_xfer_algo,
    "DiBX000 master GPIO12 I2C bus", mst) != 0)
  pr_err("could not initialize the master i2c_adapter\n");

 mst->master_i2c_adap_gpio34.dev.parent = mst->i2c_adap->dev.parent;
 if (i2c_adapter_init
   (&mst->master_i2c_adap_gpio34, &dibx000_i2c_master_gpio34_xfer_algo,
    "DiBX000 master GPIO34 I2C bus", mst) != 0)
  pr_err("could not initialize the master i2c_adapter\n");

 mst->master_i2c_adap_gpio67.dev.parent = mst->i2c_adap->dev.parent;
 if (i2c_adapter_init
   (&mst->master_i2c_adap_gpio67, &dibx000_i2c_gated_gpio67_algo,
    "DiBX000 master GPIO67 I2C bus", mst) != 0)
  pr_err("could not initialize the master i2c_adapter\n");


 dibx000_i2c_gate_ctrl(mst, mst->i2c_write_buffer, 0, 0);

 ret = (i2c_transfer(i2c_adap, mst->msg, 1) == 1);
 mutex_unlock(&mst->i2c_buffer_lock);

 return ret;
}
