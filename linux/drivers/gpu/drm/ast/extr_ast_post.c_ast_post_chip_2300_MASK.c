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
typedef  int u8 ;
typedef  int u32 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int dummy; } ;
struct ast2300_dram_param {int dram_freq; scalar_t__ dram_type; int /*<<< orphan*/  vram_size; int /*<<< orphan*/  dram_chipid; } ;

/* Variables and functions */
 scalar_t__ AST_DDR2 ; 
 scalar_t__ AST_DDR3 ; 
 int /*<<< orphan*/  AST_DRAM_1Gx16 ; 
 int /*<<< orphan*/  AST_DRAM_2Gx16 ; 
 int /*<<< orphan*/  AST_DRAM_4Gx16 ; 
 int /*<<< orphan*/  AST_DRAM_512Mx16 ; 
 int /*<<< orphan*/  AST_IO_CRTC_PORT ; 
 int /*<<< orphan*/  AST_VIDMEM_SIZE_16M ; 
 int /*<<< orphan*/  AST_VIDMEM_SIZE_32M ; 
 int /*<<< orphan*/  AST_VIDMEM_SIZE_64M ; 
 int /*<<< orphan*/  AST_VIDMEM_SIZE_8M ; 
 int FUNC0 (struct ast_private*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct ast_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ast_private*,int,int) ; 
 int FUNC3 (struct ast_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ast_private*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ast_private*,struct ast2300_dram_param*) ; 
 int /*<<< orphan*/  FUNC6 (struct ast_private*,struct ast2300_dram_param*) ; 
 int /*<<< orphan*/  FUNC7 (struct ast_private*,struct ast2300_dram_param*) ; 
 int /*<<< orphan*/  FUNC8 (struct ast_private*,struct ast2300_dram_param*) ; 

__attribute__((used)) static void FUNC9(struct drm_device *dev)
{
	struct ast_private *ast = dev->dev_private;
	struct ast2300_dram_param param;
	u32 temp;
	u8 reg;

	reg = FUNC0(ast, AST_IO_CRTC_PORT, 0xd0, 0xff);
	if ((reg & 0x80) == 0) {/* vga only */
		FUNC4(ast, 0xf004, 0x1e6e0000);
		FUNC4(ast, 0xf000, 0x1);
		FUNC4(ast, 0x12000, 0x1688a8a8);
		do {
			;
		} while (FUNC3(ast, 0x12000) != 0x1);

		FUNC4(ast, 0x10000, 0xfc600309);
		do {
			;
		} while (FUNC3(ast, 0x10000) != 0x1);

		/* Slow down CPU/AHB CLK in VGA only mode */
		temp = FUNC3(ast, 0x12008);
		temp |= 0x73;
		FUNC4(ast, 0x12008, temp);

		param.dram_freq = 396;
		param.dram_type = AST_DDR3;
		temp = FUNC1(ast, 0x1e6e2070);
		if (temp & 0x01000000)
			param.dram_type = AST_DDR2;
                switch (temp & 0x18000000) {
		case 0:
			param.dram_chipid = AST_DRAM_512Mx16;
			break;
		default:
		case 0x08000000:
			param.dram_chipid = AST_DRAM_1Gx16;
			break;
		case 0x10000000:
			param.dram_chipid = AST_DRAM_2Gx16;
			break;
		case 0x18000000:
			param.dram_chipid = AST_DRAM_4Gx16;
			break;
		}
                switch (temp & 0x0c) {
                default:
		case 0x00:
			param.vram_size = AST_VIDMEM_SIZE_8M;
			break;

		case 0x04:
			param.vram_size = AST_VIDMEM_SIZE_16M;
			break;

		case 0x08:
			param.vram_size = AST_VIDMEM_SIZE_32M;
			break;

		case 0x0c:
			param.vram_size = AST_VIDMEM_SIZE_64M;
			break;
		}

		if (param.dram_type == AST_DDR3) {
			FUNC8(ast, &param);
			FUNC6(ast, &param);
		} else {
			FUNC7(ast, &param);
			FUNC5(ast, &param);
		}

		temp = FUNC1(ast, 0x1e6e2040);
		FUNC2(ast, 0x1e6e2040, temp | 0x40);
	}

	/* wait ready */
	do {
		reg = FUNC0(ast, AST_IO_CRTC_PORT, 0xd0, 0xff);
	} while ((reg & 0x40) == 0);
}