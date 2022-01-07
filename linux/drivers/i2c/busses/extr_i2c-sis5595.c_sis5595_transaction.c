
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;


 int EBUSY ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int MAX_TIMEOUT ;
 int SMB_CTL_LO ;
 int SMB_STS_HI ;
 int SMB_STS_LO ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*) ;
 int msleep (int) ;
 int sis5595_read (int ) ;
 int sis5595_write (int ,int) ;

__attribute__((used)) static int sis5595_transaction(struct i2c_adapter *adap)
{
 int temp;
 int result = 0;
 int timeout = 0;


 temp = sis5595_read(SMB_STS_LO) + (sis5595_read(SMB_STS_HI) << 8);
 if (temp != 0x00) {
  dev_dbg(&adap->dev, "SMBus busy (%04x). Resetting...\n", temp);
  sis5595_write(SMB_STS_LO, temp & 0xff);
  sis5595_write(SMB_STS_HI, temp >> 8);
  if ((temp = sis5595_read(SMB_STS_LO) + (sis5595_read(SMB_STS_HI) << 8)) != 0x00) {
   dev_dbg(&adap->dev, "Failed! (%02x)\n", temp);
   return -EBUSY;
  } else {
   dev_dbg(&adap->dev, "Successful!\n");
  }
 }


 sis5595_write(SMB_CTL_LO, sis5595_read(SMB_CTL_LO) | 0x10);


 do {
  msleep(1);
  temp = sis5595_read(SMB_STS_LO);
 } while (!(temp & 0x40) && (timeout++ < MAX_TIMEOUT));


 if (timeout > MAX_TIMEOUT) {
  dev_dbg(&adap->dev, "SMBus Timeout!\n");
  result = -ETIMEDOUT;
 }

 if (temp & 0x10) {
  dev_dbg(&adap->dev, "Error: Failed bus transaction\n");
  result = -ENXIO;
 }

 if (temp & 0x20) {
  dev_err(&adap->dev, "Bus collision! SMBus may be locked until "
   "next hard reset (or not...)\n");

  result = -EIO;
 }

 temp = sis5595_read(SMB_STS_LO) + (sis5595_read(SMB_STS_HI) << 8);
 if (temp != 0x00) {
  sis5595_write(SMB_STS_LO, temp & 0xff);
  sis5595_write(SMB_STS_HI, temp >> 8);
 }

 temp = sis5595_read(SMB_STS_LO) + (sis5595_read(SMB_STS_HI) << 8);
 if (temp != 0x00)
  dev_dbg(&adap->dev, "Failed reset at end of transaction (%02x)\n", temp);

 return result;
}
