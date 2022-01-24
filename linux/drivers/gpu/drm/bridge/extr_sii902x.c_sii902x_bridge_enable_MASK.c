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
struct sii902x {int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SII902X_AVI_POWER_STATE_MSK ; 
 int /*<<< orphan*/  SII902X_PWR_STATE_CTRL ; 
 int /*<<< orphan*/  SII902X_SYS_CTRL_DATA ; 
 int /*<<< orphan*/  SII902X_SYS_CTRL_PWR_DWN ; 
 struct sii902x* FUNC1 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_bridge *bridge)
{
	struct sii902x *sii902x = FUNC1(bridge);

	FUNC2(&sii902x->mutex);

	FUNC4(sii902x->regmap, SII902X_PWR_STATE_CTRL,
			   SII902X_AVI_POWER_STATE_MSK,
			   FUNC0(0));
	FUNC4(sii902x->regmap, SII902X_SYS_CTRL_DATA,
			   SII902X_SYS_CTRL_PWR_DWN, 0);

	FUNC3(&sii902x->mutex);
}