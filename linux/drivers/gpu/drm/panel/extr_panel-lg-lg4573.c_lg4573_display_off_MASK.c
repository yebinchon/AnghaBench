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
struct lg4573 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_ENTER_SLEEP_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_OFF ; 
 int FUNC0 (struct lg4573*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct lg4573 *ctx)
{
	int ret;

	ret = FUNC0(ctx, MIPI_DCS_SET_DISPLAY_OFF);
	if (ret)
		return ret;

	FUNC1(120);

	return FUNC0(ctx, MIPI_DCS_ENTER_SLEEP_MODE);
}