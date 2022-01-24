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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ast_private*,int) ; 
 int FUNC1 (struct ast_private*) ; 

bool FUNC2(struct drm_device *dev, u8 *ediddata)
{
	struct ast_private *ast = dev->dev_private;
	u32 i, boot_address, offset, data;

	boot_address = FUNC1(ast);

	/* validate FW version */
	offset = 0xf000;
	data = FUNC0(ast, boot_address + offset);
	if ((data & 0xf0) != 0x10)
		return false;

	/* validate PnP Monitor */
	offset = 0xf010;
	data = FUNC0(ast, boot_address + offset);
	if (!(data & 0x01))
		return false;

	/* Read EDID */
	offset = 0xf020;
	for (i = 0; i < 128; i += 4) {
		data = FUNC0(ast, boot_address + offset + i);
		*(u32 *)(ediddata + i) = data;
	}

	return true;
}