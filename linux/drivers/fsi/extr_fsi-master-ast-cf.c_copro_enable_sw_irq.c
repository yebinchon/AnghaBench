
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fsi_master_acf {int dev; scalar_t__ cvic; } ;


 scalar_t__ CVIC_EN_REG ;
 int ENODEV ;
 int dev_err (int ,char*) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int msleep (int) ;

__attribute__((used)) static int copro_enable_sw_irq(struct fsi_master_acf *master)
{
 int timeout;
 uint32_t val;





 for (timeout = 0; timeout < 10; timeout++) {
  iowrite32(0x2, master->cvic + CVIC_EN_REG);
  val = ioread32(master->cvic + CVIC_EN_REG);
  if (val & 2)
   break;
  msleep(1);
 }
 if (!(val & 2)) {
  dev_err(master->dev, "Failed to enable coprocessor interrupt !\n");
  return -ENODEV;
 }
 return 0;
}
