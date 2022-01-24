#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct edid {int dummy; } ;
struct drm_connector {TYPE_2__* dev; } ;
struct ast_private {scalar_t__ tx_chip_type; int dp501_maxclk; } ;
struct ast_connector {int /*<<< orphan*/  base; TYPE_1__* i2c; } ;
struct TYPE_5__ {struct ast_private* dev_private; } ;
struct TYPE_4__ {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 scalar_t__ AST_TX_DP501 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct edid*) ; 
 struct edid* FUNC4 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct edid*) ; 
 struct edid* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct ast_connector* FUNC7 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC8(struct drm_connector *connector)
{
	struct ast_connector *ast_connector = FUNC7(connector);
	struct ast_private *ast = connector->dev->dev_private;
	struct edid *edid;
	int ret;
	bool flags = false;
	if (ast->tx_chip_type == AST_TX_DP501) {
		ast->dp501_maxclk = 0xff;
		edid = FUNC6(128, GFP_KERNEL);
		if (!edid)
			return -ENOMEM;

		flags = FUNC0(connector->dev, (u8 *)edid);
		if (flags)
			ast->dp501_maxclk = FUNC1(connector->dev);
		else
			FUNC5(edid);
	}
	if (!flags)
		edid = FUNC4(connector, &ast_connector->i2c->adapter);
	if (edid) {
		FUNC3(&ast_connector->base, edid);
		ret = FUNC2(connector, edid);
		FUNC5(edid);
		return ret;
	} else
		FUNC3(&ast_connector->base, NULL);
	return 0;
}