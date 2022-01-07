
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dev; } ;


 int ALI1535_KILL ;
 int ALI1535_STS_BUSERR ;
 int ALI1535_STS_BUSY ;
 int ALI1535_STS_DEV ;
 int ALI1535_STS_DONE ;
 int ALI1535_STS_ERR ;
 int ALI1535_STS_FAIL ;
 int ALI1535_STS_IDLE ;
 int ALI1535_T_OUT ;
 int EBUSY ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int MAX_TIMEOUT ;
 int SMBHSTADD ;
 int SMBHSTCMD ;
 int SMBHSTDAT0 ;
 int SMBHSTDAT1 ;
 int SMBHSTPORT ;
 int SMBHSTSTS ;
 int SMBHSTTYP ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ali1535_transaction(struct i2c_adapter *adap)
{
 int temp;
 int result = 0;
 int timeout = 0;

 dev_dbg(&adap->dev, "Transaction (pre): STS=%02x, TYP=%02x, "
  "CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\n",
  inb_p(SMBHSTSTS), inb_p(SMBHSTTYP), inb_p(SMBHSTCMD),
  inb_p(SMBHSTADD), inb_p(SMBHSTDAT0), inb_p(SMBHSTDAT1));


 temp = inb_p(SMBHSTSTS);



 if (temp & ALI1535_STS_BUSY) {
  dev_info(&adap->dev,
   "Resetting entire SMB Bus to clear busy condition (%02x)\n",
   temp);
  outb_p(ALI1535_T_OUT, SMBHSTTYP);
  temp = inb_p(SMBHSTSTS);
 }


 if (temp & (ALI1535_STS_ERR | ALI1535_STS_BUSY)) {

  outb_p(0xFF, SMBHSTSTS);
  temp = inb_p(SMBHSTSTS);
  if (temp & (ALI1535_STS_ERR | ALI1535_STS_BUSY)) {




   dev_err(&adap->dev,
    "SMBus reset failed! (0x%02x) - controller or "
    "device on bus is probably hung\n", temp);
   return -EBUSY;
  }
 } else {

  if (temp & ALI1535_STS_DONE)
   outb_p(temp, SMBHSTSTS);
 }


 outb_p(0xFF, SMBHSTPORT);


 timeout = 0;
 do {
  usleep_range(1000, 2000);
  temp = inb_p(SMBHSTSTS);
 } while (((temp & ALI1535_STS_BUSY) && !(temp & ALI1535_STS_IDLE))
   && (timeout++ < MAX_TIMEOUT));


 if (timeout > MAX_TIMEOUT) {
  result = -ETIMEDOUT;
  dev_err(&adap->dev, "SMBus Timeout!\n");
 }

 if (temp & ALI1535_STS_FAIL) {
  result = -EIO;
  dev_dbg(&adap->dev, "Error: Failed bus transaction\n");
 }





 if (temp & ALI1535_STS_BUSERR) {
  result = -ENXIO;
  dev_dbg(&adap->dev,
   "Error: no response or bus collision ADD=%02x\n",
   inb_p(SMBHSTADD));
 }


 if (temp & ALI1535_STS_DEV) {
  result = -EIO;
  dev_err(&adap->dev, "Error: device error\n");
 }


 if (!(temp & ALI1535_STS_DONE)) {
  result = -ETIMEDOUT;
  dev_err(&adap->dev, "Error: command never completed\n");
 }

 dev_dbg(&adap->dev, "Transaction (post): STS=%02x, TYP=%02x, "
  "CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\n",
  inb_p(SMBHSTSTS), inb_p(SMBHSTTYP), inb_p(SMBHSTCMD),
  inb_p(SMBHSTADD), inb_p(SMBHSTDAT0), inb_p(SMBHSTDAT1));


 if (!(temp & ALI1535_STS_DONE)) {

  outb_p(ALI1535_KILL, SMBHSTTYP);
  outb_p(0xFF, SMBHSTSTS);
 } else if (temp & ALI1535_STS_ERR) {

  outb_p(ALI1535_T_OUT, SMBHSTTYP);
  outb_p(0xFF, SMBHSTSTS);
 }

 return result;
}
