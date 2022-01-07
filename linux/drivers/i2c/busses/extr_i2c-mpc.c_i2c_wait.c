
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpc_i2c {int interrupt; int dev; int queue; scalar_t__ base; int irq; } ;


 int CCR_MEN ;
 int CSR_MAL ;
 int CSR_MCF ;
 int CSR_MIF ;
 int CSR_RXAK ;
 int EAGAIN ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 scalar_t__ MPC_I2C_SR ;
 int dev_dbg (int ,char*) ;
 unsigned long jiffies ;
 int readb (scalar_t__) ;
 int schedule () ;
 scalar_t__ time_after (unsigned long,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int wait_event_timeout (int ,int,unsigned int) ;
 int writeb (int ,scalar_t__) ;
 int writeccr (struct mpc_i2c*,int ) ;

__attribute__((used)) static int i2c_wait(struct mpc_i2c *i2c, unsigned timeout, int writing)
{
 unsigned long orig_jiffies = jiffies;
 u32 cmd_err;
 int result = 0;

 if (!i2c->irq) {
  while (!(readb(i2c->base + MPC_I2C_SR) & CSR_MIF)) {
   schedule();
   if (time_after(jiffies, orig_jiffies + timeout)) {
    dev_dbg(i2c->dev, "timeout\n");
    writeccr(i2c, 0);
    result = -ETIMEDOUT;
    break;
   }
  }
  cmd_err = readb(i2c->base + MPC_I2C_SR);
  writeb(0, i2c->base + MPC_I2C_SR);
 } else {

  result = wait_event_timeout(i2c->queue,
   (i2c->interrupt & CSR_MIF), timeout);

  if (unlikely(!(i2c->interrupt & CSR_MIF))) {
   dev_dbg(i2c->dev, "wait timeout\n");
   writeccr(i2c, 0);
   result = -ETIMEDOUT;
  }

  cmd_err = i2c->interrupt;
  i2c->interrupt = 0;
 }

 if (result < 0)
  return result;

 if (!(cmd_err & CSR_MCF)) {
  dev_dbg(i2c->dev, "unfinished\n");
  return -EIO;
 }

 if (cmd_err & CSR_MAL) {
  dev_dbg(i2c->dev, "MAL\n");
  return -EAGAIN;
 }

 if (writing && (cmd_err & CSR_RXAK)) {
  dev_dbg(i2c->dev, "No RXAK\n");

  writeccr(i2c, CCR_MEN);
  return -ENXIO;
 }
 return 0;
}
