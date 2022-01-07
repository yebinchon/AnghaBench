
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_twi_dev {scalar_t__ buf_len; int * buf; int dev; int use_alt_cmd; scalar_t__ base; } ;


 int AT91_TWI_CR ;
 int AT91_TWI_IDR ;
 int AT91_TWI_STOP ;
 scalar_t__ AT91_TWI_THR ;
 int AT91_TWI_TXRDY ;
 int at91_twi_write (struct at91_twi_dev*,int ,int ) ;
 int dev_dbg (int ,char*,int ,scalar_t__) ;
 int writeb_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void at91_twi_write_next_byte(struct at91_twi_dev *dev)
{
 if (!dev->buf_len)
  return;


 writeb_relaxed(*dev->buf, dev->base + AT91_TWI_THR);


 if (--dev->buf_len == 0) {
  if (!dev->use_alt_cmd)
   at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_STOP);
  at91_twi_write(dev, AT91_TWI_IDR, AT91_TWI_TXRDY);
 }

 dev_dbg(dev->dev, "wrote 0x%x, to go %zu\n", *dev->buf, dev->buf_len);

 ++dev->buf;
}
