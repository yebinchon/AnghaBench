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
struct dm_target {struct delay_c* private; } ;
struct delay_c {int /*<<< orphan*/  delay_timer; int /*<<< orphan*/  may_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct delay_c*,int) ; 

__attribute__((used)) static void FUNC4(struct dm_target *ti)
{
	struct delay_c *dc = ti->private;

	FUNC0(&dc->may_delay, 0);
	FUNC1(&dc->delay_timer);
	FUNC2(FUNC3(dc, 1));
}