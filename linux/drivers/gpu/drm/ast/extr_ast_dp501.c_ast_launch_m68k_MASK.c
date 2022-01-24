#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int* dp501_fw_addr; TYPE_1__* dp501_fw; } ;
struct TYPE_2__ {int size; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AST_IO_CRTC_PORT ; 
 int FUNC0 (struct ast_private*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct ast_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ast_private*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ast_private*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static bool FUNC5(struct drm_device *dev)
{
	struct ast_private *ast = dev->dev_private;
	u32 i, data, len = 0;
	u32 boot_address;
	u8 *fw_addr = NULL;
	u8 jreg;

	data = FUNC2(ast, 0x1e6e2100) & 0x01;
	if (!data) {

		if (ast->dp501_fw_addr) {
			fw_addr = ast->dp501_fw_addr;
			len = 32*1024;
		} else {
			if (!ast->dp501_fw &&
			    FUNC1(dev) < 0)
				return false;

			fw_addr = (u8 *)ast->dp501_fw->data;
			len = ast->dp501_fw->size;
		}
		/* Get BootAddress */
		FUNC3(ast, 0x1e6e2000, 0x1688a8a8);
		data = FUNC2(ast, 0x1e6e0004);
		switch (data & 0x03) {
		case 0:
			boot_address = 0x44000000;
			break;
		default:
		case 1:
			boot_address = 0x48000000;
			break;
		case 2:
			boot_address = 0x50000000;
			break;
		case 3:
			boot_address = 0x60000000;
			break;
		}
		boot_address -= 0x200000; /* -2MB */

		/* copy image to buffer */
		for (i = 0; i < len; i += 4) {
			data = *(u32 *)(fw_addr + i);
			FUNC3(ast, boot_address + i, data);
		}

		/* Init SCU */
		FUNC3(ast, 0x1e6e2000, 0x1688a8a8);

		/* Launch FW */
		FUNC3(ast, 0x1e6e2104, 0x80000000 + boot_address);
		FUNC3(ast, 0x1e6e2100, 1);

		/* Update Scratch */
		data = FUNC2(ast, 0x1e6e2040) & 0xfffff1ff;		/* D[11:9] = 100b: UEFI handling */
		data |= 0x800;
		FUNC3(ast, 0x1e6e2040, data);

		jreg = FUNC0(ast, AST_IO_CRTC_PORT, 0x99, 0xfc); /* D[1:0]: Reserved Video Buffer */
		jreg |= 0x02;
		FUNC4(ast, AST_IO_CRTC_PORT, 0x99, jreg);
	}
	return true;
}