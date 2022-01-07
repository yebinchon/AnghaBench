
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mdfld_dsi_pkg_sender {int mipi_hs_gen_ctrl_reg; int mipi_lp_gen_ctrl_reg; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int FLD_VAL (int ,int,int) ;
 int REG_WRITE (int,int) ;

__attribute__((used)) static int send_short_pkg(struct mdfld_dsi_pkg_sender *sender, u8 data_type,
   u8 cmd, u8 param, bool hs)
{
 struct drm_device *dev = sender->dev;
 u32 ctrl_reg;
 u32 val;
 u8 virtual_channel = 0;

 if (hs) {
  ctrl_reg = sender->mipi_hs_gen_ctrl_reg;


 } else {
  ctrl_reg = sender->mipi_lp_gen_ctrl_reg;


 }

 val = FLD_VAL(param, 23, 16) | FLD_VAL(cmd, 15, 8) |
  FLD_VAL(virtual_channel, 7, 6) | FLD_VAL(data_type, 5, 0);

 REG_WRITE(ctrl_reg, val);

 return 0;
}
