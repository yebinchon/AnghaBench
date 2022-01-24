#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dust_device {int fail_read_on_bb; int quiet_mode; int /*<<< orphan*/  sect_per_block; int /*<<< orphan*/  dust_lock; int /*<<< orphan*/  badblock_count; TYPE_2__* dev; } ;
struct dm_target {struct dust_device* private; } ;
typedef  unsigned long long sector_t ;
struct TYPE_4__ {TYPE_1__* bdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 unsigned long long SECTOR_SHIFT ; 
 int FUNC2 (struct dust_device*,unsigned long long) ; 
 int FUNC3 (struct dust_device*) ; 
 int FUNC4 (struct dust_device*,unsigned long long) ; 
 int FUNC5 (struct dust_device*,unsigned long long) ; 
 unsigned long long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (char*,char*,unsigned long long*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static int FUNC12(struct dm_target *ti, unsigned int argc, char **argv,
			char *result_buf, unsigned int maxlen)
{
	struct dust_device *dd = ti->private;
	sector_t size = FUNC6(dd->dev->bdev->bd_inode) >> SECTOR_SHIFT;
	bool invalid_msg = false;
	int result = -EINVAL;
	unsigned long long tmp, block;
	unsigned long flags;
	char dummy;

	if (argc == 1) {
		if (!FUNC11(argv[0], "addbadblock") ||
		    !FUNC11(argv[0], "removebadblock") ||
		    !FUNC11(argv[0], "queryblock")) {
			FUNC0("%s requires an additional argument", argv[0]);
		} else if (!FUNC11(argv[0], "disable")) {
			FUNC1("disabling read failures on bad sectors");
			dd->fail_read_on_bb = false;
			result = 0;
		} else if (!FUNC11(argv[0], "enable")) {
			FUNC1("enabling read failures on bad sectors");
			dd->fail_read_on_bb = true;
			result = 0;
		} else if (!FUNC11(argv[0], "countbadblocks")) {
			FUNC8(&dd->dust_lock, flags);
			FUNC1("countbadblocks: %llu badblock(s) found",
			       dd->badblock_count);
			FUNC9(&dd->dust_lock, flags);
			result = 0;
		} else if (!FUNC11(argv[0], "clearbadblocks")) {
			result = FUNC3(dd);
		} else if (!FUNC11(argv[0], "quiet")) {
			if (!dd->quiet_mode)
				dd->quiet_mode = true;
			else
				dd->quiet_mode = false;
			result = 0;
		} else {
			invalid_msg = true;
		}
	} else if (argc == 2) {
		if (FUNC10(argv[1], "%llu%c", &tmp, &dummy) != 1)
			return result;

		block = tmp;
		FUNC7(size, dd->sect_per_block);
		if (block > size) {
			FUNC0("selected block value out of range");
			return result;
		}

		if (!FUNC11(argv[0], "addbadblock"))
			result = FUNC2(dd, block);
		else if (!FUNC11(argv[0], "removebadblock"))
			result = FUNC5(dd, block);
		else if (!FUNC11(argv[0], "queryblock"))
			result = FUNC4(dd, block);
		else
			invalid_msg = true;

	} else
		FUNC0("invalid number of arguments '%d'", argc);

	if (invalid_msg)
		FUNC0("unrecognized message '%s' received", argv[0]);

	return result;
}