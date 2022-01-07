
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad5064_state {TYPE_1__* chip_info; } ;
struct TYPE_2__ {int regmap_type; } ;


 unsigned int AD5064_CMD_CONFIG ;
 unsigned int AD5064_CMD_CONFIG_V2 ;

 int ad5064_write (struct ad5064_state*,unsigned int,int ,unsigned int,int ) ;

__attribute__((used)) static int ad5064_set_config(struct ad5064_state *st, unsigned int val)
{
 unsigned int cmd;

 switch (st->chip_info->regmap_type) {
 case 128:
  cmd = AD5064_CMD_CONFIG_V2;
  break;
 default:
  cmd = AD5064_CMD_CONFIG;
  break;
 }

 return ad5064_write(st, cmd, 0, val, 0);
}
