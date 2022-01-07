
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_card {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* update_phy_reg ) (struct fw_card*,int,int ,int) ;} ;


 int PHY_BUS_RESET ;
 int PHY_BUS_SHORT_RESET ;
 int stub1 (struct fw_card*,int,int ,int) ;

__attribute__((used)) static int reset_bus(struct fw_card *card, bool short_reset)
{
 int reg = short_reset ? 5 : 1;
 int bit = short_reset ? PHY_BUS_SHORT_RESET : PHY_BUS_RESET;

 return card->driver->update_phy_reg(card, reg, 0, bit);
}
