
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {int len; unsigned int* buf; int flags; int addr; } ;
struct i2c_adapter {int dev; } ;
struct at91_twi_dev {int use_alt_cmd; scalar_t__ buf_len; unsigned int* buf; int recv_len_abort; int dev; struct i2c_msg* msg; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ has_alt_cmd; } ;


 scalar_t__ AT91_I2C_MAX_ALT_CMD_DATA_SIZE ;
 int AT91_TWI_ACMDIS ;
 int AT91_TWI_ACMEN ;
 int AT91_TWI_ACR ;
 int AT91_TWI_ACR_DATAL (scalar_t__) ;
 int AT91_TWI_ACR_DIR ;
 int AT91_TWI_CR ;
 int AT91_TWI_IADR ;
 scalar_t__ AT91_TWI_IADRSZ_1 ;
 int AT91_TWI_MMR ;
 int AT91_TWI_MREAD ;
 int I2C_M_RD ;
 int at91_do_twi_transfer (struct at91_twi_dev*) ;
 int at91_twi_write (struct at91_twi_dev*,int ,int) ;
 int dev_dbg (int *,char*,int) ;
 struct at91_twi_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static int at91_twi_xfer(struct i2c_adapter *adap, struct i2c_msg *msg, int num)
{
 struct at91_twi_dev *dev = i2c_get_adapdata(adap);
 int ret;
 unsigned int_addr_flag = 0;
 struct i2c_msg *m_start = msg;
 bool is_read;

 dev_dbg(&adap->dev, "at91_xfer: processing %d messages:\n", num);

 ret = pm_runtime_get_sync(dev->dev);
 if (ret < 0)
  goto out;

 if (num == 2) {
  int internal_address = 0;
  int i;


  m_start = &msg[1];
  for (i = 0; i < msg->len; ++i) {
   const unsigned addr = msg->buf[msg->len - 1 - i];

   internal_address |= addr << (8 * i);
   int_addr_flag += AT91_TWI_IADRSZ_1;
  }
  at91_twi_write(dev, AT91_TWI_IADR, internal_address);
 }

 dev->use_alt_cmd = 0;
 is_read = (m_start->flags & I2C_M_RD);
 if (dev->pdata->has_alt_cmd) {
  if (m_start->len > 0 &&
      m_start->len < AT91_I2C_MAX_ALT_CMD_DATA_SIZE) {
   at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_ACMEN);
   at91_twi_write(dev, AT91_TWI_ACR,
           AT91_TWI_ACR_DATAL(m_start->len) |
           ((is_read) ? AT91_TWI_ACR_DIR : 0));
   dev->use_alt_cmd = 1;
  } else {
   at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_ACMDIS);
  }
 }

 at91_twi_write(dev, AT91_TWI_MMR,
         (m_start->addr << 16) |
         int_addr_flag |
         ((!dev->use_alt_cmd && is_read) ? AT91_TWI_MREAD : 0));

 dev->buf_len = m_start->len;
 dev->buf = m_start->buf;
 dev->msg = m_start;
 dev->recv_len_abort = 0;

 ret = at91_do_twi_transfer(dev);

 ret = (ret < 0) ? ret : num;
out:
 pm_runtime_mark_last_busy(dev->dev);
 pm_runtime_put_autosuspend(dev->dev);

 return ret;
}
