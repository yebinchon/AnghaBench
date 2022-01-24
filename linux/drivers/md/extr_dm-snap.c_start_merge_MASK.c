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
struct dm_snapshot {int /*<<< orphan*/  state_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  RUNNING_MERGE ; 
 int /*<<< orphan*/  FUNC0 (struct dm_snapshot*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dm_snapshot *s)
{
	if (!FUNC1(RUNNING_MERGE, &s->state_bits))
		FUNC0(s);
}