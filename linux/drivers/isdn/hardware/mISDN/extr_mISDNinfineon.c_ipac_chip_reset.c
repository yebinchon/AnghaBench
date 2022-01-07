
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conf; int (* write_reg ) (struct inf_hw*,int ,int) ;} ;
struct inf_hw {TYPE_1__ ipac; } ;


 int IPAC_CONF ;
 int IPAC_MASK ;
 int IPAC_POTA2 ;
 int mdelay (int) ;
 int stub1 (struct inf_hw*,int ,int) ;
 int stub2 (struct inf_hw*,int ,int) ;
 int stub3 (struct inf_hw*,int ,int) ;
 int stub4 (struct inf_hw*,int ,int) ;

__attribute__((used)) static void
ipac_chip_reset(struct inf_hw *hw)
{
 hw->ipac.write_reg(hw, IPAC_POTA2, 0x20);
 mdelay(5);
 hw->ipac.write_reg(hw, IPAC_POTA2, 0x00);
 mdelay(5);
 hw->ipac.write_reg(hw, IPAC_CONF, hw->ipac.conf);
 hw->ipac.write_reg(hw, IPAC_MASK, 0xc0);
}
