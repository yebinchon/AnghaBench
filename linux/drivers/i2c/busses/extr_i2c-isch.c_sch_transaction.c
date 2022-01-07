
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int EIO ;
 int ENXIO ;
 int ETIMEDOUT ;
 int MAX_RETRIES ;
 int SMBHSTADD ;
 int SMBHSTCMD ;
 int SMBHSTCNT ;
 int SMBHSTDAT0 ;
 int SMBHSTDAT1 ;
 int SMBHSTSTS ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 int inb (int ) ;
 int outb (int,int ) ;
 TYPE_1__ sch_adapter ;
 int usleep_range (int,int) ;

__attribute__((used)) static int sch_transaction(void)
{
 int temp;
 int result = 0;
 int retries = 0;

 dev_dbg(&sch_adapter.dev, "Transaction (pre): CNT=%02x, CMD=%02x, "
  "ADD=%02x, DAT0=%02x, DAT1=%02x\n", inb(SMBHSTCNT),
  inb(SMBHSTCMD), inb(SMBHSTADD), inb(SMBHSTDAT0),
  inb(SMBHSTDAT1));


 temp = inb(SMBHSTSTS) & 0x0f;
 if (temp) {

  if (temp & 0x01) {
   dev_dbg(&sch_adapter.dev, "Completion (%02x). "
    "Clear...\n", temp);
  }
  if (temp & 0x06) {
   dev_dbg(&sch_adapter.dev, "SMBus error (%02x). "
    "Resetting...\n", temp);
  }
  outb(temp, SMBHSTSTS);
  temp = inb(SMBHSTSTS) & 0x0f;
  if (temp) {
   dev_err(&sch_adapter.dev,
    "SMBus is not ready: (%02x)\n", temp);
   return -EAGAIN;
  }
 }


 outb(inb(SMBHSTCNT) | 0x10, SMBHSTCNT);

 do {
  usleep_range(100, 200);
  temp = inb(SMBHSTSTS) & 0x0f;
 } while ((temp & 0x08) && (retries++ < MAX_RETRIES));


 if (retries > MAX_RETRIES) {
  dev_err(&sch_adapter.dev, "SMBus Timeout!\n");
  result = -ETIMEDOUT;
 }
 if (temp & 0x04) {
  result = -EIO;
  dev_dbg(&sch_adapter.dev, "Bus collision! SMBus may be "
   "locked until next hard reset. (sorry!)\n");

 } else if (temp & 0x02) {
  result = -EIO;
  dev_err(&sch_adapter.dev, "Error: no response!\n");
 } else if (temp & 0x01) {
  dev_dbg(&sch_adapter.dev, "Post complete!\n");
  outb(temp, SMBHSTSTS);
  temp = inb(SMBHSTSTS) & 0x07;
  if (temp & 0x06) {

   dev_dbg(&sch_adapter.dev, "Failed reset at end of "
    "transaction (%02x), Bus error!\n", temp);
  }
 } else {
  result = -ENXIO;
  dev_dbg(&sch_adapter.dev, "No such address.\n");
 }
 dev_dbg(&sch_adapter.dev, "Transaction (post): CNT=%02x, CMD=%02x, "
  "ADD=%02x, DAT0=%02x, DAT1=%02x\n", inb(SMBHSTCNT),
  inb(SMBHSTCMD), inb(SMBHSTADD), inb(SMBHSTDAT0),
  inb(SMBHSTDAT1));
 return result;
}
