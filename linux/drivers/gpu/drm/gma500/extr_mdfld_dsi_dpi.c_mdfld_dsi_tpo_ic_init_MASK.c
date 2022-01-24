#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct mdfld_dsi_config {int channel_num; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int DCS_CHANNEL_NUMBER_POS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int GEN_LONG_WRITE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int WORD_COUNTS_POS ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int) ; 

__attribute__((used)) static void FUNC6(struct mdfld_dsi_config *dsi_config, u32 pipe)
{
	struct drm_device *dev = dsi_config->dev;
	u32 dcsChannelNumber = dsi_config->channel_num;
	u32 gen_data_reg = FUNC2(pipe);
	u32 gen_ctrl_reg = FUNC1(pipe);
	u32 gen_ctrl_val = GEN_LONG_WRITE;

	FUNC0("Enter mrst init TPO MIPI display.\n");

	gen_ctrl_val |= dcsChannelNumber << DCS_CHANNEL_NUMBER_POS;

	/* Flip page order */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x00008036);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x02 << WORD_COUNTS_POS));

	/* 0xF0 */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x005a5af0);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x03 << WORD_COUNTS_POS));

	/* Write protection key */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x005a5af1);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x03 << WORD_COUNTS_POS));

	/* 0xFC */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x005a5afc);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x03 << WORD_COUNTS_POS));

	/* 0xB7 */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x770000b7);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x00000044);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x05 << WORD_COUNTS_POS));

	/* 0xB6 */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x000a0ab6);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x03 << WORD_COUNTS_POS));

	/* 0xF2 */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x081010f2);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x4a070708);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x000000c5);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x09 << WORD_COUNTS_POS));

	/* 0xF8 */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x024003f8);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x01030a04);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x0e020220);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x00000004);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x0d << WORD_COUNTS_POS));

	/* 0xE2 */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x398fc3e2);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x0000916f);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x06 << WORD_COUNTS_POS));

	/* 0xB0 */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x000000b0);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x02 << WORD_COUNTS_POS));

	/* 0xF4 */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x240242f4);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x78ee2002);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x2a071050);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x507fee10);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x10300710);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x14 << WORD_COUNTS_POS));

	/* 0xBA */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x19fe07ba);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x101c0a31);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x00000010);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x09 << WORD_COUNTS_POS));

	/* 0xBB */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x28ff07bb);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x24280a31);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x00000034);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x09 << WORD_COUNTS_POS));

	/* 0xFB */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x535d05fb);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x1b1a2130);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x221e180e);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x131d2120);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x535d0508);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x1c1a2131);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x231f160d);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x111b2220);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x535c2008);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x1f1d2433);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x2c251a10);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x2c34372d);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x00000023);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x31 << WORD_COUNTS_POS));

	/* 0xFA */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x525c0bfa);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x1c1c232f);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x2623190e);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x18212625);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x545d0d0e);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x1e1d2333);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x26231a10);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x1a222725);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x545d280f);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x21202635);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x31292013);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x31393d33);
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x00000029);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x31 << WORD_COUNTS_POS));

	/* Set DM */
	FUNC5(dev, pipe);
	FUNC3(gen_data_reg, 0x000100f7);
	FUNC4(dev, pipe);
	FUNC3(gen_ctrl_reg, gen_ctrl_val | (0x03 << WORD_COUNTS_POS));
}