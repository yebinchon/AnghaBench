
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a10_fpga_priv {int regmap; } ;


 int A10_FPGAMGR_IMGCFG_STAT_OFST ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static u32 socfpga_a10_fpga_read_stat(struct a10_fpga_priv *priv)
{
 u32 val;

 regmap_read(priv->regmap, A10_FPGAMGR_IMGCFG_STAT_OFST, &val);

 return val;
}
