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
struct dm_delay_info {unsigned long expires; int /*<<< orphan*/  list; struct delay_c* context; } ;
struct delay_class {int /*<<< orphan*/  ops; int /*<<< orphan*/  delay; } ;
struct delay_c {int /*<<< orphan*/  delayed_bios; int /*<<< orphan*/  may_delay; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  delayed_bios_lock ; 
 struct dm_delay_info* FUNC1 (struct bio*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct delay_c*,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct delay_c *dc, struct delay_class *c, struct bio *bio)
{
	struct dm_delay_info *delayed;
	unsigned long expires = 0;

	if (!c->delay || !FUNC0(&dc->may_delay))
		return DM_MAPIO_REMAPPED;

	delayed = FUNC1(bio, sizeof(struct dm_delay_info));

	delayed->context = dc;
	delayed->expires = expires = jiffies + FUNC3(c->delay);

	FUNC4(&delayed_bios_lock);
	c->ops++;
	FUNC2(&delayed->list, &dc->delayed_bios);
	FUNC5(&delayed_bios_lock);

	FUNC6(dc, expires);

	return DM_MAPIO_SUBMITTED;
}