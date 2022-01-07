
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;


 int BYTE_DONE_STS ;
 int EAGAIN ;
 int ENXIO ;
 int ETIMEDOUT ;
 int MAX_TIMEOUT ;
 int SIS630_BLOCK_DATA ;
 int SMBCOL_STS ;
 int SMBERR_STS ;
 int SMB_STS ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int msleep (int) ;
 int sis630_read (int ) ;

__attribute__((used)) static int sis630_transaction_wait(struct i2c_adapter *adap, int size)
{
 int temp, result = 0, timeout = 0;


 do {
  msleep(1);
  temp = sis630_read(SMB_STS);

  if (size == SIS630_BLOCK_DATA && (temp & BYTE_DONE_STS))
   break;
 } while (!(temp & 0x0e) && (timeout++ < MAX_TIMEOUT));


 if (timeout > MAX_TIMEOUT) {
  dev_dbg(&adap->dev, "SMBus Timeout!\n");
  result = -ETIMEDOUT;
 }

 if (temp & SMBERR_STS) {
  dev_dbg(&adap->dev, "Error: Failed bus transaction\n");
  result = -ENXIO;
 }

 if (temp & SMBCOL_STS) {
  dev_err(&adap->dev, "Bus collision!\n");
  result = -EAGAIN;
 }

 return result;
}
