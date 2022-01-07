
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct highlander_i2c_dev {int dev; scalar_t__ base; } ;


 scalar_t__ SMSADR ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 int iowrite16 (int,scalar_t__) ;

__attribute__((used)) static void highlander_i2c_command(struct highlander_i2c_dev *dev,
       u8 command, int len)
{
 unsigned int i;
 u16 cmd = (command << 8) | command;

 for (i = 0; i < len; i += 2) {
  if (len - i == 1)
   cmd = command << 8;
  iowrite16(cmd, dev->base + SMSADR + i);
  dev_dbg(dev->dev, "command data[%x] 0x%04x\n", i/2, cmd);
 }
}
