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
struct dce110_link_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPHY_TRAINING_PATTERN_SEL ; 
 int /*<<< orphan*/  DP_DPHY_TRAINING_PATTERN_SEL ; 
 int /*<<< orphan*/  DP_LINK_CNTL ; 
 int /*<<< orphan*/  DP_LINK_TRAINING_COMPLETE ; 
 int /*<<< orphan*/  DP_PANEL_MODE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dce110_link_encoder*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dce110_link_encoder *enc110)
{
	/* reset training pattern */
	FUNC0(DP_DPHY_TRAINING_PATTERN_SEL, 0,
			DPHY_TRAINING_PATTERN_SEL, 0);

	/* reset training complete */
	FUNC1(DP_LINK_CNTL, DP_LINK_TRAINING_COMPLETE, 0);

	/* reset panel mode */
	FUNC2(enc110, DP_PANEL_MODE_DEFAULT);
}