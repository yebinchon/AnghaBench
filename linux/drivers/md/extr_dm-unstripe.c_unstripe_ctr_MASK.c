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
struct unstripe_c {int stripes; int chunk_size; int unstripe; unsigned long long physical_start; int unstripe_offset; int unstripe_width; scalar_t__ chunk_shift; int /*<<< orphan*/  dev; } ;
struct dm_target {char* error; unsigned long long len; struct unstripe_c* private; int /*<<< orphan*/  table; } ;
typedef  unsigned long long sector_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct unstripe_c*,struct dm_target*) ; 
 scalar_t__ FUNC1 (struct dm_target*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct dm_target*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*,int,int*) ; 
 struct unstripe_c* FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (unsigned long long,int) ; 
 int FUNC9 (char*,char*,unsigned long long*,char*) ; 

__attribute__((used)) static int FUNC10(struct dm_target *ti, unsigned int argc, char **argv)
{
	struct unstripe_c *uc;
	sector_t tmp_len;
	unsigned long long start;
	char dummy;

	if (argc != 5) {
		ti->error = "Invalid number of arguments";
		return -EINVAL;
	}

	uc = FUNC7(sizeof(*uc), GFP_KERNEL);
	if (!uc) {
		ti->error = "Memory allocation for unstriped context failed";
		return -ENOMEM;
	}

	if (FUNC6(argv[0], 10, &uc->stripes) || !uc->stripes) {
		ti->error = "Invalid stripe count";
		goto err;
	}

	if (FUNC6(argv[1], 10, &uc->chunk_size) || !uc->chunk_size) {
		ti->error = "Invalid chunk_size";
		goto err;
	}

	if (FUNC6(argv[2], 10, &uc->unstripe)) {
		ti->error = "Invalid stripe number";
		goto err;
	}

	if (uc->unstripe > uc->stripes && uc->stripes > 1) {
		ti->error = "Please provide stripe between [0, # of stripes]";
		goto err;
	}

	if (FUNC1(ti, argv[3], FUNC3(ti->table), &uc->dev)) {
		ti->error = "Couldn't get striped device";
		goto err;
	}

	if (FUNC9(argv[4], "%llu%c", &start, &dummy) != 1 || start != (sector_t)start) {
		ti->error = "Invalid striped device offset";
		goto err;
	}
	uc->physical_start = start;

	uc->unstripe_offset = uc->unstripe * uc->chunk_size;
	uc->unstripe_width = (uc->stripes - 1) * uc->chunk_size;
	uc->chunk_shift = FUNC5(uc->chunk_size) ? FUNC4(uc->chunk_size) - 1 : 0;

	tmp_len = ti->len;
	if (FUNC8(tmp_len, uc->chunk_size)) {
		ti->error = "Target length not divisible by chunk size";
		goto err;
	}

	if (FUNC2(ti, uc->chunk_size)) {
		ti->error = "Failed to set max io len";
		goto err;
	}

	ti->private = uc;
	return 0;
err:
	FUNC0(uc, ti);
	return -EINVAL;
}