
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int dummy_read_phy_reg(struct fw_card *card, int address)
{
 return -ENODEV;
}
