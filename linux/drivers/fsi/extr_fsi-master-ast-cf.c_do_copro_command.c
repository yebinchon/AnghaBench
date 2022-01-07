
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fsi_master_acf {scalar_t__ sram; int dev; scalar_t__ cvic; } ;


 scalar_t__ CMD_STAT_REG ;
 scalar_t__ CVIC_TRIG_REG ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int ESHUTDOWN ;
 int ETIMEDOUT ;
 int STAT_COMPLETE ;



 int dev_warn (int ,char*) ;
 int ioread8 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int iowrite32be (int,scalar_t__) ;
 int trace_fsi_master_acf_copro_command (struct fsi_master_acf*,int) ;

__attribute__((used)) static int do_copro_command(struct fsi_master_acf *master, uint32_t op)
{
 uint32_t timeout = 10000000;
 uint8_t stat;

 trace_fsi_master_acf_copro_command(master, op);


 iowrite32be(op, master->sram + CMD_STAT_REG);


 if (master->cvic)
  iowrite32(0x2, master->cvic + CVIC_TRIG_REG);


 do {
  if (timeout-- == 0) {
   dev_warn(master->dev,
     "Timeout waiting for coprocessor completion\n");
   return -ETIMEDOUT;
  }
  stat = ioread8(master->sram + CMD_STAT_REG);
 } while(stat < STAT_COMPLETE || stat == 0xff);

 if (stat == STAT_COMPLETE)
  return 0;
 switch(stat) {
 case 130:
  return -EINVAL;
 case 129:
  return -EIO;
 case 128:
  return -ESHUTDOWN;
 }
 return -ENXIO;
}
