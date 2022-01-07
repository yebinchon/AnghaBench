
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_ohci {int phy_reg_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_phy_reg (struct fw_ohci*,int) ;
 int write_phy_reg (struct fw_ohci*,int,int) ;

__attribute__((used)) static int initiated_reset(struct fw_ohci *ohci)
{
 int reg;
 int ret = 0;

 mutex_lock(&ohci->phy_reg_mutex);
 reg = write_phy_reg(ohci, 7, 0xe0);
 if (reg >= 0) {
  reg = read_phy_reg(ohci, 8);
  reg |= 0x40;
  reg = write_phy_reg(ohci, 8, reg);
  if (reg >= 0) {
   reg = read_phy_reg(ohci, 12);
   if (reg >= 0) {
    if ((reg & 0x08) == 0x08) {

     ret = 0x2;
    }
   }
  }
 }
 mutex_unlock(&ohci->phy_reg_mutex);
 return ret;
}
