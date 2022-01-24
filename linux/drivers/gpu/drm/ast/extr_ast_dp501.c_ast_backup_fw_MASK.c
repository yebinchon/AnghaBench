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

bool FUNC2(struct drm_device *dev, u8 *addr, u32 size)
{
	struct ast_private *ast = dev->dev_private;
	u32 i, data;
	u32 boot_address;

	data = FUNC0(ast, 0x1e6e2100) & 0x01;
	if (data) {
		boot_address = FUNC1(ast);
		for (i = 0; i < size; i += 4)
			*(u32 *)(addr + i) = FUNC0(ast, boot_address + i);
		return true;
	}
	return false;
}