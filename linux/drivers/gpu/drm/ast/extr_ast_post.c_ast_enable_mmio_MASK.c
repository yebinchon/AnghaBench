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
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AST_IO_CRTC_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct ast_private*,int /*<<< orphan*/ ,int,int) ; 

void FUNC1(struct drm_device *dev)
{
	struct ast_private *ast = dev->dev_private;

	FUNC0(ast, AST_IO_CRTC_PORT, 0xa1, 0x06);
}