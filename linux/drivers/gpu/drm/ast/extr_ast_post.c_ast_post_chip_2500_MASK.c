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

/* Variables and functions */
 int /*<<< orphan*/  AST_IO_CRTC_PORT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ast_private*) ; 
 int FUNC2 (struct ast_private*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct ast_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ast_private*,int,int) ; 
 int FUNC5 (struct ast_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ast_private*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(struct drm_device *dev)
{
	struct ast_private *ast = dev->dev_private;
	u32 temp;
	u8 reg;

	reg = FUNC2(ast, AST_IO_CRTC_PORT, 0xd0, 0xff);
	if ((reg & 0x80) == 0) {/* vga only */
		/* Clear bus lock condition */
		FUNC4(ast, 0x1e600000, 0xAEED1A03);
		FUNC4(ast, 0x1e600084, 0x00010000);
		FUNC4(ast, 0x1e600088, 0x00000000);
		FUNC4(ast, 0x1e6e2000, 0x1688A8A8);
		FUNC6(ast, 0xf004, 0x1e6e0000);
		FUNC6(ast, 0xf000, 0x1);
		FUNC6(ast, 0x12000, 0x1688a8a8);
		while (FUNC5(ast, 0x12000) != 0x1)
			;

		FUNC6(ast, 0x10000, 0xfc600309);
		while (FUNC5(ast, 0x10000) != 0x1)
			;

		/* Slow down CPU/AHB CLK in VGA only mode */
		temp = FUNC5(ast, 0x12008);
		temp |= 0x73;
		FUNC6(ast, 0x12008, temp);

		/* Reset USB port to patch USB unknown device issue */
		FUNC4(ast, 0x1e6e2090, 0x20000000);
		temp  = FUNC3(ast, 0x1e6e2094);
		temp |= 0x00004000;
		FUNC4(ast, 0x1e6e2094, temp);
		temp  = FUNC3(ast, 0x1e6e2070);
		if (temp & 0x00800000) {
			FUNC4(ast, 0x1e6e207c, 0x00800000);
			FUNC7(100);
			FUNC4(ast, 0x1e6e2070, 0x00800000);
		}

		if (!FUNC1(ast))
			FUNC0("DRAM init failed !\n");

		temp = FUNC3(ast, 0x1e6e2040);
		FUNC4(ast, 0x1e6e2040, temp | 0x40);
	}

	/* wait ready */
	do {
		reg = FUNC2(ast, AST_IO_CRTC_PORT, 0xd0, 0xff);
	} while ((reg & 0x40) == 0);
}