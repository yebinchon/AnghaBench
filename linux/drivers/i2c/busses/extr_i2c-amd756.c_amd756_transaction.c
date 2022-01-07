
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;


 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int GE_ABORT ;
 int GE_HOST_STC ;
 int GS_CLEAR_STS ;
 int GS_COL_STS ;
 int GS_HCYC_STS ;
 int GS_HST_STS ;
 int GS_PRERR_STS ;
 int GS_SMB_STS ;
 int GS_TO_STS ;
 int MAX_TIMEOUT ;
 int SMB_GLOBAL_ENABLE ;
 int SMB_GLOBAL_STATUS ;
 int SMB_HOST_ADDRESS ;
 int SMB_HOST_DATA ;
 int dev_dbg (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 int inb_p (int ) ;
 int inw (int ) ;
 int inw_p (int ) ;
 int msleep (int) ;
 int outw_p (int,int ) ;

__attribute__((used)) static int amd756_transaction(struct i2c_adapter *adap)
{
 int temp;
 int result = 0;
 int timeout = 0;

 dev_dbg(&adap->dev, "Transaction (pre): GS=%04x, GE=%04x, ADD=%04x, "
  "DAT=%04x\n", inw_p(SMB_GLOBAL_STATUS),
  inw_p(SMB_GLOBAL_ENABLE), inw_p(SMB_HOST_ADDRESS),
  inb_p(SMB_HOST_DATA));


 if ((temp = inw_p(SMB_GLOBAL_STATUS)) & (GS_HST_STS | GS_SMB_STS)) {
  dev_dbg(&adap->dev, "SMBus busy (%04x). Waiting...\n", temp);
  do {
   msleep(1);
   temp = inw_p(SMB_GLOBAL_STATUS);
  } while ((temp & (GS_HST_STS | GS_SMB_STS)) &&
           (timeout++ < MAX_TIMEOUT));

  if (timeout > MAX_TIMEOUT) {
   dev_dbg(&adap->dev, "Busy wait timeout (%04x)\n", temp);
   goto abort;
  }
  timeout = 0;
 }


 outw_p(inw(SMB_GLOBAL_ENABLE) | GE_HOST_STC, SMB_GLOBAL_ENABLE);


 do {
  msleep(1);
  temp = inw_p(SMB_GLOBAL_STATUS);
 } while ((temp & GS_HST_STS) && (timeout++ < MAX_TIMEOUT));


 if (timeout > MAX_TIMEOUT) {
  dev_dbg(&adap->dev, "Completion timeout!\n");
  goto abort;
 }

 if (temp & GS_PRERR_STS) {
  result = -ENXIO;
  dev_dbg(&adap->dev, "SMBus Protocol error (no response)!\n");
 }

 if (temp & GS_COL_STS) {
  result = -EIO;
  dev_warn(&adap->dev, "SMBus collision!\n");
 }

 if (temp & GS_TO_STS) {
  result = -ETIMEDOUT;
  dev_dbg(&adap->dev, "SMBus protocol timeout!\n");
 }

 if (temp & GS_HCYC_STS)
  dev_dbg(&adap->dev, "SMBus protocol success!\n");

 outw_p(GS_CLEAR_STS, SMB_GLOBAL_STATUS);
 dev_dbg(&adap->dev,
  "Transaction (post): GS=%04x, GE=%04x, ADD=%04x, DAT=%04x\n",
  inw_p(SMB_GLOBAL_STATUS), inw_p(SMB_GLOBAL_ENABLE),
  inw_p(SMB_HOST_ADDRESS), inb_p(SMB_HOST_DATA));

 return result;

 abort:
 dev_warn(&adap->dev, "Sending abort\n");
 outw_p(inw(SMB_GLOBAL_ENABLE) | GE_ABORT, SMB_GLOBAL_ENABLE);
 msleep(100);
 outw_p(GS_CLEAR_STS, SMB_GLOBAL_STATUS);
 return -EIO;
}
