
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct i2c_msg {int dummy; } ;
struct dibx000_i2c_master {int* i2c_write_buffer; int* i2c_read_buffer; int i2c_buffer_lock; TYPE_1__* msg; int i2c_adap; int i2c_addr; } ;
struct TYPE_3__ {int* buf; int len; scalar_t__ flags; int addr; } ;


 scalar_t__ I2C_M_RD ;
 int dprintk (char*,...) ;
 int i2c_transfer (int ,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u16 dibx000_read_word(struct dibx000_i2c_master *mst, u16 reg)
{
 u16 ret;

 if (mutex_lock_interruptible(&mst->i2c_buffer_lock) < 0) {
  dprintk("could not acquire lock\n");
  return 0;
 }

 mst->i2c_write_buffer[0] = reg >> 8;
 mst->i2c_write_buffer[1] = reg & 0xff;

 memset(mst->msg, 0, 2 * sizeof(struct i2c_msg));
 mst->msg[0].addr = mst->i2c_addr;
 mst->msg[0].flags = 0;
 mst->msg[0].buf = mst->i2c_write_buffer;
 mst->msg[0].len = 2;
 mst->msg[1].addr = mst->i2c_addr;
 mst->msg[1].flags = I2C_M_RD;
 mst->msg[1].buf = mst->i2c_read_buffer;
 mst->msg[1].len = 2;

 if (i2c_transfer(mst->i2c_adap, mst->msg, 2) != 2)
  dprintk("i2c read error on %d\n", reg);

 ret = (mst->i2c_read_buffer[0] << 8) | mst->i2c_read_buffer[1];
 mutex_unlock(&mst->i2c_buffer_lock);

 return ret;
}
