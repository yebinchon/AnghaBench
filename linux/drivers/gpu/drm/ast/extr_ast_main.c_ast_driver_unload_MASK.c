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
struct drm_device {int /*<<< orphan*/  pdev; struct ast_private* dev_private; } ;
struct ast_private {scalar_t__ ioregs; scalar_t__ regs; struct ast_private* dp501_fw_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AST_IO_CRTC_PORT ; 
 scalar_t__ AST_IO_MM_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct ast_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ast_private*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ast_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC7(struct drm_device *dev)
{
	struct ast_private *ast = dev->dev_private;

	/* enable standard VGA decode */
	FUNC3(ast, AST_IO_CRTC_PORT, 0xa1, 0x04);

	FUNC2(dev);
	FUNC5(ast->dp501_fw_addr);
	FUNC1(dev);
	FUNC4(dev);

	FUNC0(ast);
	if (ast->ioregs != ast->regs + AST_IO_MM_OFFSET)
		FUNC6(dev->pdev, ast->ioregs);
	FUNC6(dev->pdev, ast->regs);
	FUNC5(ast);
}