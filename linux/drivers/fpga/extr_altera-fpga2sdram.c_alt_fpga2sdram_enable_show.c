
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpga_bridge {struct alt_fpga2sdram_data* priv; } ;
struct alt_fpga2sdram_data {int mask; int sdrctl; } ;


 int ALT_SDR_CTL_FPGAPORTRST_OFST ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int alt_fpga2sdram_enable_show(struct fpga_bridge *bridge)
{
 struct alt_fpga2sdram_data *priv = bridge->priv;
 int value;

 regmap_read(priv->sdrctl, ALT_SDR_CTL_FPGAPORTRST_OFST, &value);

 return (value & priv->mask) == priv->mask;
}
