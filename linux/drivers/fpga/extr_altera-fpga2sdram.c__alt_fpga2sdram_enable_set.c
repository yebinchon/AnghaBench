
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alt_fpga2sdram_data {int mask; int sdrctl; } ;


 int ALT_SDR_CTL_FPGAPORTRST_OFST ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static inline int _alt_fpga2sdram_enable_set(struct alt_fpga2sdram_data *priv,
          bool enable)
{
 return regmap_update_bits(priv->sdrctl, ALT_SDR_CTL_FPGAPORTRST_OFST,
      priv->mask, enable ? priv->mask : 0);
}
