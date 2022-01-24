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
struct platform_device {int dummy; } ;
struct ingenic_drm {int /*<<< orphan*/  drm; scalar_t__ pix_clk; scalar_t__ lcd_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ingenic_drm* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct ingenic_drm *priv = FUNC3(pdev);

	if (priv->lcd_clk)
		FUNC0(priv->lcd_clk);
	FUNC0(priv->pix_clk);

	FUNC2(&priv->drm);
	FUNC1(&priv->drm);

	return 0;
}