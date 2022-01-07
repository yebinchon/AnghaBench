
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun6i_dsi {int regs; } ;


 int SUN6I_DSI_BASIC_CTL0_INST_ST ;
 int SUN6I_DSI_BASIC_CTL0_REG ;
 int regmap_read_poll_timeout (int ,int ,int,int,int,int) ;

__attribute__((used)) static int sun6i_dsi_inst_wait_for_completion(struct sun6i_dsi *dsi)
{
 u32 val;

 return regmap_read_poll_timeout(dsi->regs, SUN6I_DSI_BASIC_CTL0_REG,
     val,
     !(val & SUN6I_DSI_BASIC_CTL0_INST_ST),
     100, 5000);
}
