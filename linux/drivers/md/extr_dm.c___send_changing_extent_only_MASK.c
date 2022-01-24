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
struct dm_target {int dummy; } ;
struct clone_info {unsigned int sector; scalar_t__ sector_count; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct clone_info*,struct dm_target*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct dm_target*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct clone_info *ci, struct dm_target *ti,
				       unsigned num_bios)
{
	unsigned len;

	/*
	 * Even though the device advertised support for this type of
	 * request, that does not mean every target supports it, and
	 * reconfiguration might also have changed that since the
	 * check was performed.
	 */
	if (!num_bios)
		return -EOPNOTSUPP;

	len = FUNC2((sector_t)ci->sector_count, FUNC1(ci->sector, ti));

	FUNC0(ci, ti, num_bios, &len);

	ci->sector += len;
	ci->sector_count -= len;

	return 0;
}