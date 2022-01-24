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
typedef  int /*<<< orphan*/  uint32_t ;
struct link_encoder {int dummy; } ;
struct dcn10_link_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_DPHY_TRAINING_PATTERN_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dcn10_link_encoder* FUNC1 (struct link_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct dcn10_link_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct dcn10_link_encoder*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dcn10_link_encoder*,int) ; 

void FUNC5(
	struct link_encoder *enc,
	uint32_t index)
{
	struct dcn10_link_encoder *enc10 = FUNC1(enc);
	/* Write Training Pattern */

	FUNC0(DP_DPHY_TRAINING_PATTERN_SEL, index);

	/* Set HW Register Training Complete to false */

	FUNC4(enc10, false);

	/* Disable PHY Bypass mode to output Training Pattern */

	FUNC3(enc10, false);

	/* Disable PRBS mode */
	FUNC2(enc10);
}