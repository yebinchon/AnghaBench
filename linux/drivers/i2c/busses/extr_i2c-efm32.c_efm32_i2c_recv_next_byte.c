
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int len; int * buf; } ;
struct efm32_i2c_ddata {size_t current_msg; size_t current_word; int num_msgs; int done; struct i2c_msg* msgs; } ;


 int REG_CMD ;
 int REG_CMD_ACK ;
 int REG_CMD_NACK ;
 int REG_CMD_STOP ;
 int REG_RXDATA ;
 int complete (int *) ;
 int efm32_i2c_read32 (struct efm32_i2c_ddata*,int ) ;
 int efm32_i2c_send_next_msg (struct efm32_i2c_ddata*) ;
 int efm32_i2c_write32 (struct efm32_i2c_ddata*,int ,int ) ;

__attribute__((used)) static void efm32_i2c_recv_next_byte(struct efm32_i2c_ddata *ddata)
{
 struct i2c_msg *cur_msg = &ddata->msgs[ddata->current_msg];

 cur_msg->buf[ddata->current_word] = efm32_i2c_read32(ddata, REG_RXDATA);
 ddata->current_word += 1;
 if (ddata->current_word >= cur_msg->len) {

  ddata->current_word = 0;
  ddata->current_msg += 1;

  efm32_i2c_write32(ddata, REG_CMD, REG_CMD_NACK);

  if (ddata->current_msg >= ddata->num_msgs) {
   efm32_i2c_write32(ddata, REG_CMD, REG_CMD_STOP);
   complete(&ddata->done);
  } else {
   efm32_i2c_send_next_msg(ddata);
  }
 } else {
  efm32_i2c_write32(ddata, REG_CMD, REG_CMD_ACK);
 }
}
