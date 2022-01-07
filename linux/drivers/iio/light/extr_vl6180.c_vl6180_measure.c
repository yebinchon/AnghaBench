
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vl6180_data {int lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int drdy_mask; int value_reg; scalar_t__ word; int start_reg; } ;


 int EIO ;
 int VL6180_CLEAR_ALS ;
 int VL6180_CLEAR_ERROR ;
 int VL6180_CLEAR_RANGE ;
 int VL6180_INTR_CLEAR ;
 int VL6180_INTR_STATUS ;
 int VL6180_STARTSTOP ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* vl6180_chan_regs_table ;
 int vl6180_read_byte (struct i2c_client*,int ) ;
 int vl6180_read_word (struct i2c_client*,int ) ;
 int vl6180_write_byte (struct i2c_client*,int ,int) ;

__attribute__((used)) static int vl6180_measure(struct vl6180_data *data, int addr)
{
 struct i2c_client *client = data->client;
 int tries = 20, ret;
 u16 value;

 mutex_lock(&data->lock);

 ret = vl6180_write_byte(client,
  vl6180_chan_regs_table[addr].start_reg, VL6180_STARTSTOP);
 if (ret < 0)
  goto fail;

 while (tries--) {
  ret = vl6180_read_byte(client, VL6180_INTR_STATUS);
  if (ret < 0)
   goto fail;

  if (ret & vl6180_chan_regs_table[addr].drdy_mask)
   break;
  msleep(20);
 }

 if (tries < 0) {
  ret = -EIO;
  goto fail;
 }


 ret = vl6180_chan_regs_table[addr].word ?
  vl6180_read_word(client, vl6180_chan_regs_table[addr].value_reg) :
  vl6180_read_byte(client, vl6180_chan_regs_table[addr].value_reg);
 if (ret < 0)
  goto fail;
 value = ret;


 ret = vl6180_write_byte(client, VL6180_INTR_CLEAR,
  VL6180_CLEAR_ERROR | VL6180_CLEAR_ALS | VL6180_CLEAR_RANGE);
 if (ret < 0)
  goto fail;

 ret = value;

fail:
 mutex_unlock(&data->lock);

 return ret;
}
