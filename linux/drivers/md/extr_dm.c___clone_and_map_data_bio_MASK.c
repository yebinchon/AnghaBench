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
struct dm_target_io {unsigned int* len_ptr; } ;
struct dm_target {int dummy; } ;
struct clone_info {struct bio* bio; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (struct dm_target_io*) ; 
 struct dm_target_io* FUNC1 (struct clone_info*,struct dm_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dm_target_io*,struct bio*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_target_io*) ; 

__attribute__((used)) static int FUNC4(struct clone_info *ci, struct dm_target *ti,
				    sector_t sector, unsigned *len)
{
	struct bio *bio = ci->bio;
	struct dm_target_io *tio;
	int r;

	tio = FUNC1(ci, ti, 0, GFP_NOIO);
	tio->len_ptr = len;
	r = FUNC2(tio, bio, sector, *len);
	if (r < 0) {
		FUNC3(tio);
		return r;
	}
	(void) FUNC0(tio);

	return 0;
}