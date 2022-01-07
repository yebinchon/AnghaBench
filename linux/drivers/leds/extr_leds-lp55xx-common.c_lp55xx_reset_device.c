
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int val; int addr; } ;
struct lp55xx_device_config {TYPE_1__ reset; } ;
struct lp55xx_chip {struct lp55xx_device_config* cfg; } ;


 int lp55xx_write (struct lp55xx_chip*,int ,int ) ;

__attribute__((used)) static void lp55xx_reset_device(struct lp55xx_chip *chip)
{
 struct lp55xx_device_config *cfg = chip->cfg;
 u8 addr = cfg->reset.addr;
 u8 val = cfg->reset.val;


 lp55xx_write(chip, addr, val);
}
