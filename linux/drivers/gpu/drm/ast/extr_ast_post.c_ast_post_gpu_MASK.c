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
typedef  int u32 ;
struct drm_device {struct ast_private* dev_private; } ;
struct ast_private {scalar_t__ config_mode; scalar_t__ chip; scalar_t__ tx_chip_type; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ AST2300 ; 
 scalar_t__ AST2400 ; 
 scalar_t__ AST2500 ; 
 int /*<<< orphan*/  AST_IO_CRTC_PORT ; 
 scalar_t__ AST_TX_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ast_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ast_private*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ ast_use_p2a ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 

void FUNC11(struct drm_device *dev)
{
	u32 reg;
	struct ast_private *ast = dev->dev_private;

	FUNC9(ast->dev->pdev, 0x04, &reg);
	reg |= 0x3;
	FUNC10(ast->dev->pdev, 0x04, reg);

	FUNC1(dev);
	FUNC4(ast);
	FUNC0(dev);
	FUNC7(dev);

	if (ast->config_mode == ast_use_p2a) {
		if (ast->chip == AST2500)
			FUNC6(dev);
		else if (ast->chip == AST2300 || ast->chip == AST2400)
			FUNC5(dev);
		else
			FUNC3(dev);

		FUNC2(dev);
	} else {
		if (ast->tx_chip_type != AST_TX_NONE)
			FUNC8(ast, AST_IO_CRTC_PORT, 0xa3, 0xcf, 0x80);	/* Enable DVO */
	}
}