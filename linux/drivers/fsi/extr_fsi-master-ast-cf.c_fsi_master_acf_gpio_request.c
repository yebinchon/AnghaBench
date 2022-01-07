
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct fsi_master_acf {int dev; scalar_t__ sram; scalar_t__ cvic; int scu; } ;


 scalar_t__ ARB_ARM_ACK ;
 scalar_t__ ARB_ARM_REQ ;
 scalar_t__ ARB_REG ;
 scalar_t__ CF_STARTED ;
 scalar_t__ CVIC_TRIG_REG ;
 unsigned int SCU_COPRO_CLK_EN ;
 int SCU_COPRO_CTRL ;
 int dev_warn (int ,char*) ;
 scalar_t__ ioread32 (scalar_t__) ;
 scalar_t__ ioread8 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int iowrite8 (scalar_t__,scalar_t__) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int udelay (int) ;

__attribute__((used)) static int fsi_master_acf_gpio_request(void *data)
{
 struct fsi_master_acf *master = data;
 int timeout;
 u8 val;




 iowrite8(ARB_ARM_REQ, master->sram + ARB_REG);
 if (ioread32(master->sram + CF_STARTED) == 0) {
  unsigned int reg = 0;

  regmap_read(master->scu, SCU_COPRO_CTRL, &reg);
  if (!(reg & SCU_COPRO_CLK_EN))
   return 0;
 }


 if (master->cvic)
  iowrite32(0x2, master->cvic + CVIC_TRIG_REG);

 for (timeout = 0; timeout < 10000; timeout++) {
  val = ioread8(master->sram + ARB_REG);
  if (val != ARB_ARM_REQ)
   break;
  udelay(1);
 }


 if (val != ARB_ARM_ACK)
  dev_warn(master->dev, "GPIO request arbitration timeout\n");

 return 0;
}
