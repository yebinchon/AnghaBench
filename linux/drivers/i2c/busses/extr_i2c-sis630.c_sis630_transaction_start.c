
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dev; } ;


 int EBUSY ;
 int MSTO_EN ;
 int SMBCLK_SEL ;
 int SMBHOST_CNT ;
 int SMB_CNT ;
 int SMB_HOSTBUSY ;
 int SMB_KILL ;
 int SMB_PROBE ;
 int SMB_START ;
 int SMB_STS ;
 int dev_dbg (int *,char*,...) ;
 scalar_t__ high_clock ;
 int sis630_read (int ) ;
 int sis630_write (int ,int) ;

__attribute__((used)) static int sis630_transaction_start(struct i2c_adapter *adap, int size,
        u8 *oldclock)
{
 int temp;


 temp = sis630_read(SMB_CNT);
 if ((temp & (SMB_PROBE | SMB_HOSTBUSY)) != 0x00) {
  dev_dbg(&adap->dev, "SMBus busy (%02x). Resetting...\n", temp);

  sis630_write(SMBHOST_CNT, SMB_KILL);

  temp = sis630_read(SMB_CNT);
  if (temp & (SMB_PROBE | SMB_HOSTBUSY)) {
   dev_dbg(&adap->dev, "Failed! (%02x)\n", temp);
   return -EBUSY;
  } else {
   dev_dbg(&adap->dev, "Successful!\n");
  }
 }


 *oldclock = sis630_read(SMB_CNT);

 dev_dbg(&adap->dev, "saved clock 0x%02x\n", *oldclock);



 if (high_clock)
  sis630_write(SMB_CNT, SMBCLK_SEL);
 else
  sis630_write(SMB_CNT, (*oldclock & ~MSTO_EN));


 temp = sis630_read(SMB_STS);
 sis630_write(SMB_STS, temp & 0x1e);


 sis630_write(SMBHOST_CNT, SMB_START | (size & 0x07));

 return 0;
}
