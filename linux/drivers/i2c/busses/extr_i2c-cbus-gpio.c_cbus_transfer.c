
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbus_host {int lock; int clk; int sel; int dev; int dat; } ;


 int CBUS_ADDR_BITS ;
 int CBUS_REG_BITS ;
 char I2C_SMBUS_READ ;
 char I2C_SMBUS_WRITE ;
 int cbus_receive_word (struct cbus_host*) ;
 int cbus_send_bit (struct cbus_host*,int) ;
 int cbus_send_data (struct cbus_host*,unsigned int,int) ;
 int dev_dbg (int ,char*) ;
 int gpiod_direction_input (int ) ;
 int gpiod_direction_output (int ,int) ;
 int gpiod_set_value (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cbus_transfer(struct cbus_host *host, char rw, unsigned dev,
    unsigned reg, unsigned data)
{
 unsigned long flags;
 int ret;


 spin_lock_irqsave(&host->lock, flags);


 gpiod_set_value(host->sel, 0);


 gpiod_direction_output(host->dat, 1);


 cbus_send_data(host, dev, CBUS_ADDR_BITS);


 cbus_send_bit(host, rw == I2C_SMBUS_READ);


 cbus_send_data(host, reg, CBUS_REG_BITS);

 if (rw == I2C_SMBUS_WRITE) {
  cbus_send_data(host, data, 16);
  ret = 0;
 } else {
  ret = gpiod_direction_input(host->dat);
  if (ret) {
   dev_dbg(host->dev, "failed setting direction\n");
   goto out;
  }
  gpiod_set_value(host->clk, 1);

  ret = cbus_receive_word(host);
  if (ret < 0) {
   dev_dbg(host->dev, "failed receiving data\n");
   goto out;
  }
 }


 gpiod_set_value(host->sel, 1);
 gpiod_set_value(host->clk, 1);
 gpiod_set_value(host->clk, 0);

out:
 spin_unlock_irqrestore(&host->lock, flags);

 return ret;
}
