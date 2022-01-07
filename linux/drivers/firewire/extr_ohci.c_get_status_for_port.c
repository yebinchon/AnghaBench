
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_ohci {int phy_reg_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_phy_reg (struct fw_ohci*,int) ;
 int write_phy_reg (struct fw_ohci*,int,int) ;

__attribute__((used)) static int get_status_for_port(struct fw_ohci *ohci, int port_index)
{
 int reg;

 mutex_lock(&ohci->phy_reg_mutex);
 reg = write_phy_reg(ohci, 7, port_index);
 if (reg >= 0)
  reg = read_phy_reg(ohci, 8);
 mutex_unlock(&ohci->phy_reg_mutex);
 if (reg < 0)
  return reg;

 switch (reg & 0x0f) {
 case 0x06:
  return 2;
 case 0x0e:
  return 3;
 }
 return 1;
}
