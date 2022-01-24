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
struct zforce_ts {int /*<<< orphan*/  reg_vdd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct zforce_ts*) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct zforce_ts *ts = data;

	FUNC3(ts);

	FUNC2(10);

	if (!FUNC0(ts->reg_vdd))
		FUNC1(ts->reg_vdd);
}