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
 int /*<<< orphan*/  SII902X_SYS_CTRL_DATA ; 
 int /*<<< orphan*/  SII902X_SYS_CTRL_PWR_DWN ; 
 struct sii902x* FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_bridge *bridge)
{
	struct sii902x *sii902x = FUNC0(bridge);

	FUNC1(&sii902x->mutex);

	FUNC3(sii902x->regmap, SII902X_SYS_CTRL_DATA,
			   SII902X_SYS_CTRL_PWR_DWN,
			   SII902X_SYS_CTRL_PWR_DWN);

	FUNC2(&sii902x->mutex);
}