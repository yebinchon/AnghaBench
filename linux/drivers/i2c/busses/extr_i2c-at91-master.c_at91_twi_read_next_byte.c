
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct at91_twi_dev {int buf_len; scalar_t__* buf; int recv_len_abort; int dev; int use_alt_cmd; TYPE_1__* msg; scalar_t__ base; } ;
struct TYPE_2__ {int flags; int len; } ;


 int AT91_TWI_CR ;
 scalar_t__ AT91_TWI_RHR ;
 int AT91_TWI_STOP ;
 int I2C_M_RECV_LEN ;
 scalar_t__ I2C_SMBUS_BLOCK_MAX ;
 int at91_twi_read (struct at91_twi_dev*,scalar_t__) ;
 int at91_twi_write (struct at91_twi_dev*,int ,int ) ;
 int dev_dbg (int ,char*,scalar_t__,...) ;
 scalar_t__ readb_relaxed (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void at91_twi_read_next_byte(struct at91_twi_dev *dev)
{




 if (!dev->buf_len) {
  at91_twi_read(dev, AT91_TWI_RHR);
  return;
 }


 *dev->buf = readb_relaxed(dev->base + AT91_TWI_RHR);
 --dev->buf_len;


 if (dev->recv_len_abort)
  return;


 if (unlikely(dev->msg->flags & I2C_M_RECV_LEN)) {

  if (*dev->buf <= I2C_SMBUS_BLOCK_MAX && *dev->buf > 0) {
   dev->msg->flags &= ~I2C_M_RECV_LEN;
   dev->buf_len += *dev->buf;
   dev->msg->len = dev->buf_len + 1;
   dev_dbg(dev->dev, "received block length %zu\n",
      dev->buf_len);
  } else {

   dev->recv_len_abort = 1;
   dev->buf_len = 1;
  }
 }


 if (!dev->use_alt_cmd && dev->buf_len == 1)
  at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_STOP);

 dev_dbg(dev->dev, "read 0x%x, to go %zu\n", *dev->buf, dev->buf_len);

 ++dev->buf;
}
