
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ti_sn_bridge {int regmap; } ;


 int regmap_write (int ,unsigned int,int) ;

__attribute__((used)) static void ti_sn_bridge_write_u16(struct ti_sn_bridge *pdata,
       unsigned int reg, u16 val)
{
 regmap_write(pdata->regmap, reg, val & 0xFF);
 regmap_write(pdata->regmap, reg + 1, val >> 8);
}
