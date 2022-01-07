
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_dsi {int regs; } ;


 int SUN6I_DSI_BASIC_CTL0_INST_ST ;
 int SUN6I_DSI_BASIC_CTL0_REG ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void sun6i_dsi_inst_abort(struct sun6i_dsi *dsi)
{
 regmap_update_bits(dsi->regs, SUN6I_DSI_BASIC_CTL0_REG,
      SUN6I_DSI_BASIC_CTL0_INST_ST, 0);
}
