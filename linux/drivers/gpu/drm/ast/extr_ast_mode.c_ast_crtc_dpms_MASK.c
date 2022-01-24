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
struct drm_crtc {TYPE_1__* dev; } ;
struct ast_private {scalar_t__ chip; int /*<<< orphan*/  tx_chip_type; } ;
struct TYPE_2__ {struct ast_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ AST1180 ; 
 int /*<<< orphan*/  AST_IO_SEQ_PORT ; 
 int /*<<< orphan*/  AST_TX_DP501 ; 
#define  DRM_MODE_DPMS_OFF 131 
#define  DRM_MODE_DPMS_ON 130 
#define  DRM_MODE_DPMS_STANDBY 129 
#define  DRM_MODE_DPMS_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ast_private*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc, int mode)
{
	struct ast_private *ast = crtc->dev->dev_private;

	if (ast->chip == AST1180)
		return;

	switch (mode) {
	case DRM_MODE_DPMS_ON:
	case DRM_MODE_DPMS_STANDBY:
	case DRM_MODE_DPMS_SUSPEND:
		FUNC2(ast, AST_IO_SEQ_PORT, 0x1, 0xdf, 0);
		if (ast->tx_chip_type == AST_TX_DP501)
			FUNC1(crtc->dev, 1);
		FUNC0(crtc);
		break;
	case DRM_MODE_DPMS_OFF:
		if (ast->tx_chip_type == AST_TX_DP501)
			FUNC1(crtc->dev, 0);
		FUNC2(ast, AST_IO_SEQ_PORT, 0x1, 0xdf, 0x20);
		break;
	}
}