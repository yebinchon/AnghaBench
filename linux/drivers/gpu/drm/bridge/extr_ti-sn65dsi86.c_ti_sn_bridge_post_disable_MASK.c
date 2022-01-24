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
struct ti_sn_bridge {int /*<<< orphan*/  dev; scalar_t__ refclk; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 struct ti_sn_bridge* FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_bridge *bridge)
{
	struct ti_sn_bridge *pdata = FUNC0(bridge);

	if (pdata->refclk)
		FUNC1(pdata->refclk);

	FUNC2(pdata->dev);
}