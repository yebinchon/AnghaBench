
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a10_fpga_priv {int regmap; } ;


 int A10_FPGAMGR_DCLKCNT_OFST ;
 int A10_FPGAMGR_DCLKSTAT_DCLKDONE ;
 int A10_FPGAMGR_DCLKSTAT_OFST ;
 int regmap_read_poll_timeout (int ,int ,int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void socfpga_a10_fpga_generate_dclks(struct a10_fpga_priv *priv,
         u32 count)
{
 u32 val;


 regmap_write(priv->regmap, A10_FPGAMGR_DCLKSTAT_OFST,
       A10_FPGAMGR_DCLKSTAT_DCLKDONE);


 regmap_write(priv->regmap, A10_FPGAMGR_DCLKCNT_OFST, count);


 regmap_read_poll_timeout(priv->regmap, A10_FPGAMGR_DCLKSTAT_OFST, val,
     val, 1, 100);


 regmap_write(priv->regmap, A10_FPGAMGR_DCLKSTAT_OFST,
       A10_FPGAMGR_DCLKSTAT_DCLKDONE);
}
