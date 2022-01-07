
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pasemi_smbus {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int ENXIO ;
 int ETIME ;
 int REG_SMSTA ;
 unsigned int SMSTA_MTN ;
 unsigned int SMSTA_XEN ;
 int dev_warn (int *,char*,unsigned int) ;
 int msleep (int) ;
 unsigned int reg_read (struct pasemi_smbus*,int ) ;
 int reg_write (struct pasemi_smbus*,int ,unsigned int) ;

__attribute__((used)) static int pasemi_smb_waitready(struct pasemi_smbus *smbus)
{
 int timeout = 10;
 unsigned int status;

 status = reg_read(smbus, REG_SMSTA);

 while (!(status & SMSTA_XEN) && timeout--) {
  msleep(1);
  status = reg_read(smbus, REG_SMSTA);
 }


 if (status & SMSTA_MTN)
  return -ENXIO;

 if (timeout < 0) {
  dev_warn(&smbus->dev->dev, "Timeout, status 0x%08x\n", status);
  reg_write(smbus, REG_SMSTA, status);
  return -ETIME;
 }


 reg_write(smbus, REG_SMSTA, SMSTA_XEN);

 return 0;
}
