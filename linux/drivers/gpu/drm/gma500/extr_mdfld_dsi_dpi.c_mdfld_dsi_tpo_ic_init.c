
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdfld_dsi_config {int channel_num; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int DCS_CHANNEL_NUMBER_POS ;
 int DRM_INFO (char*) ;
 int GEN_LONG_WRITE ;
 int MIPI_HS_GEN_CTRL_REG (int) ;
 int MIPI_HS_GEN_DATA_REG (int) ;
 int REG_WRITE (int,int) ;
 int WORD_COUNTS_POS ;
 int mdfld_wait_for_HS_CTRL_FIFO (struct drm_device*,int) ;
 int mdfld_wait_for_HS_DATA_FIFO (struct drm_device*,int) ;

__attribute__((used)) static void mdfld_dsi_tpo_ic_init(struct mdfld_dsi_config *dsi_config, u32 pipe)
{
 struct drm_device *dev = dsi_config->dev;
 u32 dcsChannelNumber = dsi_config->channel_num;
 u32 gen_data_reg = MIPI_HS_GEN_DATA_REG(pipe);
 u32 gen_ctrl_reg = MIPI_HS_GEN_CTRL_REG(pipe);
 u32 gen_ctrl_val = GEN_LONG_WRITE;

 DRM_INFO("Enter mrst init TPO MIPI display.\n");

 gen_ctrl_val |= dcsChannelNumber << DCS_CHANNEL_NUMBER_POS;


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x00008036);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x02 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x005a5af0);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x03 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x005a5af1);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x03 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x005a5afc);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x03 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x770000b7);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x00000044);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x05 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x000a0ab6);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x03 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x081010f2);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x4a070708);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x000000c5);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x09 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x024003f8);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x01030a04);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x0e020220);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x00000004);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x0d << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x398fc3e2);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x0000916f);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x06 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x000000b0);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x02 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x240242f4);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x78ee2002);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x2a071050);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x507fee10);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x10300710);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x14 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x19fe07ba);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x101c0a31);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x00000010);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x09 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x28ff07bb);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x24280a31);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x00000034);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x09 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x535d05fb);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x1b1a2130);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x221e180e);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x131d2120);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x535d0508);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x1c1a2131);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x231f160d);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x111b2220);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x535c2008);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x1f1d2433);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x2c251a10);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x2c34372d);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x00000023);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x31 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x525c0bfa);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x1c1c232f);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x2623190e);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x18212625);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x545d0d0e);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x1e1d2333);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x26231a10);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x1a222725);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x545d280f);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x21202635);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x31292013);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x31393d33);
 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x00000029);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x31 << WORD_COUNTS_POS));


 mdfld_wait_for_HS_DATA_FIFO(dev, pipe);
 REG_WRITE(gen_data_reg, 0x000100f7);
 mdfld_wait_for_HS_CTRL_FIFO(dev, pipe);
 REG_WRITE(gen_ctrl_reg, gen_ctrl_val | (0x03 << WORD_COUNTS_POS));
}
