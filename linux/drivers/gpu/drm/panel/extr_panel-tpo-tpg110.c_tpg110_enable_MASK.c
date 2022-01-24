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
typedef  int /*<<< orphan*/  u8 ;
struct tpg110 {int /*<<< orphan*/  backlight; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TPG110_CTRL2_PM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tpg110* FUNC1 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC2 (struct tpg110*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tpg110*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct tpg110 *tpg = FUNC1(panel);
	u8 val;

	FUNC0(tpg->backlight);

	/* Take chip out of standby */
	val = FUNC2(tpg, TPG110_CTRL2_PM);
	val |= TPG110_CTRL2_PM;
	FUNC3(tpg, TPG110_CTRL2_PM, val);

	return 0;
}