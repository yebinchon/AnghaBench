
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;


 int ETIMEDOUT ;
 int I2C_DATACMD ;
 unsigned char I2C_DATACMD_DAT_MASK ;
 int I2C_DATACMD_READ ;
 int I2C_DATACMD_WRITE ;
 int I2C_STATUS_RFNE ;
 int I2C_STATUS_TFNF ;
 int dev_dbg (int *,char*) ;
 int poll_status (int ) ;
 unsigned char readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int xfer_read(struct i2c_adapter *adap, unsigned char *buf, int length)
{
 int i2c_reg = *buf;


 while (length--) {
  if (!poll_status(I2C_STATUS_TFNF)) {
   dev_dbg(&adap->dev, "Tx FIFO Not Full timeout\n");
   return -ETIMEDOUT;
  }


  writel(i2c_reg | I2C_DATACMD_WRITE, I2C_DATACMD);


  i2c_reg++;


  writel(I2C_DATACMD_READ, I2C_DATACMD);


  if (!poll_status(I2C_STATUS_RFNE)) {
   dev_dbg(&adap->dev, "RXRDY timeout\n");
   return -ETIMEDOUT;
  }


  *buf = (readl(I2C_DATACMD) & I2C_DATACMD_DAT_MASK);
  buf++;
 }

 return 0;
}
