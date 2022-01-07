
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sun6i_dsi {int regs; } ;
struct mipi_dsi_device {scalar_t__ lanes; } ;


 int DSI_INST_ESCA_LPDT ;
 int DSI_INST_ID_DLY ;
 int DSI_INST_ID_HSC ;
 int DSI_INST_ID_HSCEXIT ;
 int DSI_INST_ID_HSD ;
 int DSI_INST_ID_LP11 ;
 int DSI_INST_ID_LPDT ;
 int DSI_INST_ID_NOP ;
 int DSI_INST_ID_TBA ;
 int DSI_INST_MODE_ESCAPE ;
 int DSI_INST_MODE_HS ;
 int DSI_INST_MODE_HSCEXIT ;
 int DSI_INST_MODE_NOP ;
 int DSI_INST_MODE_STOP ;
 int DSI_INST_MODE_TBA ;
 int DSI_INST_PACK_COMMAND ;
 int DSI_INST_PACK_PIXEL ;
 int GENMASK (scalar_t__,int ) ;
 int SUN6I_DSI_INST_JUMP_CFG_NUM (int) ;
 int SUN6I_DSI_INST_JUMP_CFG_POINT (int ) ;
 int SUN6I_DSI_INST_JUMP_CFG_REG (int ) ;
 int SUN6I_DSI_INST_JUMP_CFG_TO (int ) ;
 int regmap_write (int ,int ,int) ;
 int sun6i_dsi_inst_setup (struct sun6i_dsi*,int ,int ,int,int,int ,int ) ;

__attribute__((used)) static void sun6i_dsi_inst_init(struct sun6i_dsi *dsi,
    struct mipi_dsi_device *device)
{
 u8 lanes_mask = GENMASK(device->lanes - 1, 0);

 sun6i_dsi_inst_setup(dsi, DSI_INST_ID_LP11, DSI_INST_MODE_STOP,
        1, lanes_mask, 0, 0);

 sun6i_dsi_inst_setup(dsi, DSI_INST_ID_TBA, DSI_INST_MODE_TBA,
        0, 1, 0, 0);

 sun6i_dsi_inst_setup(dsi, DSI_INST_ID_HSC, DSI_INST_MODE_HS,
        1, 0, DSI_INST_PACK_PIXEL, 0);

 sun6i_dsi_inst_setup(dsi, DSI_INST_ID_HSD, DSI_INST_MODE_HS,
        0, lanes_mask, DSI_INST_PACK_PIXEL, 0);

 sun6i_dsi_inst_setup(dsi, DSI_INST_ID_LPDT, DSI_INST_MODE_ESCAPE,
        0, 1, DSI_INST_PACK_COMMAND,
        DSI_INST_ESCA_LPDT);

 sun6i_dsi_inst_setup(dsi, DSI_INST_ID_HSCEXIT, DSI_INST_MODE_HSCEXIT,
        1, 0, 0, 0);

 sun6i_dsi_inst_setup(dsi, DSI_INST_ID_NOP, DSI_INST_MODE_STOP,
        0, lanes_mask, 0, 0);

 sun6i_dsi_inst_setup(dsi, DSI_INST_ID_DLY, DSI_INST_MODE_NOP,
        1, lanes_mask, 0, 0);

 regmap_write(dsi->regs, SUN6I_DSI_INST_JUMP_CFG_REG(0),
       SUN6I_DSI_INST_JUMP_CFG_POINT(DSI_INST_ID_NOP) |
       SUN6I_DSI_INST_JUMP_CFG_TO(DSI_INST_ID_HSCEXIT) |
       SUN6I_DSI_INST_JUMP_CFG_NUM(1));
}
