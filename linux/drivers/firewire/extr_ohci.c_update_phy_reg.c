
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_ohci {int dummy; } ;


 int PHY_INT_STATUS_BITS ;
 int read_phy_reg (struct fw_ohci*,int) ;
 int write_phy_reg (struct fw_ohci*,int,int) ;

__attribute__((used)) static int update_phy_reg(struct fw_ohci *ohci, int addr,
     int clear_bits, int set_bits)
{
 int ret = read_phy_reg(ohci, addr);
 if (ret < 0)
  return ret;





 if (addr == 5)
  clear_bits |= PHY_INT_STATUS_BITS;

 return write_phy_reg(ohci, addr, (ret & ~clear_bits) | set_bits);
}
