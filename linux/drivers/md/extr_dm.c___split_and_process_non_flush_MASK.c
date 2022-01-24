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
struct clone_info {unsigned int sector; unsigned int sector_count; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct clone_info*,struct dm_target*,unsigned int,unsigned int*) ; 
 scalar_t__ FUNC1 (struct clone_info*,struct dm_target*,int*) ; 
 struct dm_target* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct dm_target*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  sector_t ; 

__attribute__((used)) static int FUNC5(struct clone_info *ci)
{
	struct dm_target *ti;
	unsigned len;
	int r;

	ti = FUNC2(ci->map, ci->sector);
	if (!ti)
		return -EIO;

	if (FUNC1(ci, ti, &r))
		return r;

	len = FUNC4(sector_t, FUNC3(ci->sector, ti), ci->sector_count);

	r = FUNC0(ci, ti, ci->sector, &len);
	if (r < 0)
		return r;

	ci->sector += len;
	ci->sector_count -= len;

	return 0;
}