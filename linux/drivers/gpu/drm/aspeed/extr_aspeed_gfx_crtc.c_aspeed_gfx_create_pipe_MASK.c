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
struct drm_device {struct aspeed_gfx* dev_private; } ;
struct aspeed_gfx {int /*<<< orphan*/  connector; int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aspeed_gfx_formats ; 
 int /*<<< orphan*/  aspeed_gfx_funcs ; 
 int FUNC1 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct drm_device *drm)
{
	struct aspeed_gfx *priv = drm->dev_private;

	return FUNC1(drm, &priv->pipe, &aspeed_gfx_funcs,
					    aspeed_gfx_formats,
					    FUNC0(aspeed_gfx_formats),
					    NULL,
					    &priv->connector);
}