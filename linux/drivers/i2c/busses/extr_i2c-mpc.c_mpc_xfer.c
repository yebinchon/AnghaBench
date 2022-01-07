
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mpc_i2c {scalar_t__ base; int dev; } ;
struct i2c_msg {int flags; int len; int buf; int addr; } ;
struct i2c_adapter {int dummy; } ;


 int CSR_MAL ;
 int CSR_MBB ;
 int CSR_MCF ;
 int CSR_RXAK ;
 int EINTR ;
 int EIO ;
 scalar_t__ HZ ;
 int I2C_M_RD ;
 int I2C_M_RECV_LEN ;
 scalar_t__ MPC_I2C_SR ;
 int cond_resched () ;
 int current ;
 int dev_dbg (int ,char*,...) ;
 struct mpc_i2c* i2c_get_adapdata (struct i2c_adapter*) ;
 unsigned long jiffies ;
 int mpc_i2c_fixup (struct mpc_i2c*) ;
 int mpc_i2c_start (struct mpc_i2c*) ;
 int mpc_i2c_stop (struct mpc_i2c*) ;
 int mpc_read (struct mpc_i2c*,int ,int ,int,int,int) ;
 int mpc_write (struct mpc_i2c*,int ,int ,int,int) ;
 int readb (scalar_t__) ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;
 int writeb (int,scalar_t__) ;
 int writeccr (struct mpc_i2c*,int ) ;

__attribute__((used)) static int mpc_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
 struct i2c_msg *pmsg;
 int i;
 int ret = 0;
 unsigned long orig_jiffies = jiffies;
 struct mpc_i2c *i2c = i2c_get_adapdata(adap);

 mpc_i2c_start(i2c);


 while (readb(i2c->base + MPC_I2C_SR) & CSR_MBB) {
  if (signal_pending(current)) {
   dev_dbg(i2c->dev, "Interrupted\n");
   writeccr(i2c, 0);
   return -EINTR;
  }
  if (time_after(jiffies, orig_jiffies + HZ)) {
   u8 status = readb(i2c->base + MPC_I2C_SR);

   dev_dbg(i2c->dev, "timeout\n");
   if ((status & (CSR_MCF | CSR_MBB | CSR_RXAK)) != 0) {
    writeb(status & ~CSR_MAL,
           i2c->base + MPC_I2C_SR);
    mpc_i2c_fixup(i2c);
   }
   return -EIO;
  }
  schedule();
 }

 for (i = 0; ret >= 0 && i < num; i++) {
  pmsg = &msgs[i];
  dev_dbg(i2c->dev,
   "Doing %s %d bytes to 0x%02x - %d of %d messages\n",
   pmsg->flags & I2C_M_RD ? "read" : "write",
   pmsg->len, pmsg->addr, i + 1, num);
  if (pmsg->flags & I2C_M_RD) {
   bool recv_len = pmsg->flags & I2C_M_RECV_LEN;

   ret = mpc_read(i2c, pmsg->addr, pmsg->buf, pmsg->len, i,
           recv_len);
   if (recv_len && ret > 0)
    pmsg->len = ret;
  } else {
   ret =
       mpc_write(i2c, pmsg->addr, pmsg->buf, pmsg->len, i);
  }
 }
 mpc_i2c_stop(i2c);
 orig_jiffies = jiffies;

 while (readb(i2c->base + MPC_I2C_SR) & CSR_MBB) {
  if (time_after(jiffies, orig_jiffies + HZ)) {
   u8 status = readb(i2c->base + MPC_I2C_SR);

   dev_dbg(i2c->dev, "timeout\n");
   if ((status & (CSR_MCF | CSR_MBB | CSR_RXAK)) != 0) {
    writeb(status & ~CSR_MAL,
           i2c->base + MPC_I2C_SR);
    mpc_i2c_fixup(i2c);
   }
   return -EIO;
  }
  cond_resched();
 }
 return (ret < 0) ? ret : num;
}
