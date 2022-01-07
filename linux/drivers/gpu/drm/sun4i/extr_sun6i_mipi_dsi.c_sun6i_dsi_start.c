
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_dsi {int regs; } ;
typedef enum sun6i_dsi_start_inst { ____Placeholder_sun6i_dsi_start_inst } sun6i_dsi_start_inst ;


 int DSI_INST_ID_DLY ;
 int DSI_INST_ID_END ;
 int DSI_INST_ID_HSC ;
 int DSI_INST_ID_HSCEXIT ;
 int DSI_INST_ID_HSD ;
 int DSI_INST_ID_LP11 ;
 int DSI_INST_ID_LPDT ;
 int DSI_INST_ID_NOP ;
 int DSI_INST_ID_TBA ;




 int SUN6I_DSI_INST_FUNC_LANE_CEN ;
 int SUN6I_DSI_INST_FUNC_REG (int) ;
 int SUN6I_DSI_INST_JUMP_SEL_REG ;
 int regmap_write (int ,int ,int) ;
 int regmap_write_bits (int ,int ,int ,int ) ;
 int sun6i_dsi_inst_abort (struct sun6i_dsi*) ;
 int sun6i_dsi_inst_commit (struct sun6i_dsi*) ;

__attribute__((used)) static int sun6i_dsi_start(struct sun6i_dsi *dsi,
      enum sun6i_dsi_start_inst func)
{
 switch (func) {
 case 128:
  regmap_write(dsi->regs, SUN6I_DSI_INST_JUMP_SEL_REG,
        DSI_INST_ID_LPDT << (4 * DSI_INST_ID_LP11) |
        DSI_INST_ID_END << (4 * DSI_INST_ID_LPDT));
  break;
 case 129:
  regmap_write(dsi->regs, SUN6I_DSI_INST_JUMP_SEL_REG,
        DSI_INST_ID_LPDT << (4 * DSI_INST_ID_LP11) |
        DSI_INST_ID_DLY << (4 * DSI_INST_ID_LPDT) |
        DSI_INST_ID_TBA << (4 * DSI_INST_ID_DLY) |
        DSI_INST_ID_END << (4 * DSI_INST_ID_TBA));
  break;
 case 131:
  regmap_write(dsi->regs, SUN6I_DSI_INST_JUMP_SEL_REG,
        DSI_INST_ID_HSC << (4 * DSI_INST_ID_LP11) |
        DSI_INST_ID_END << (4 * DSI_INST_ID_HSC));
  break;
 case 130:
  regmap_write(dsi->regs, SUN6I_DSI_INST_JUMP_SEL_REG,
        DSI_INST_ID_NOP << (4 * DSI_INST_ID_LP11) |
        DSI_INST_ID_HSD << (4 * DSI_INST_ID_NOP) |
        DSI_INST_ID_DLY << (4 * DSI_INST_ID_HSD) |
        DSI_INST_ID_NOP << (4 * DSI_INST_ID_DLY) |
        DSI_INST_ID_END << (4 * DSI_INST_ID_HSCEXIT));
  break;
 default:
  regmap_write(dsi->regs, SUN6I_DSI_INST_JUMP_SEL_REG,
        DSI_INST_ID_END << (4 * DSI_INST_ID_LP11));
  break;
 }

 sun6i_dsi_inst_abort(dsi);
 sun6i_dsi_inst_commit(dsi);

 if (func == 131)
  regmap_write_bits(dsi->regs,
      SUN6I_DSI_INST_FUNC_REG(DSI_INST_ID_LP11),
      SUN6I_DSI_INST_FUNC_LANE_CEN, 0);

 return 0;
}
