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
struct dm_arg_set {int dummy; } ;
struct dm_arg {char* error; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct clone {unsigned int region_size; TYPE_2__* dest_dev; TYPE_1__* source_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MAX_REGION_SIZE ; 
 int /*<<< orphan*/  MIN_REGION_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dm_arg*,struct dm_arg_set*,unsigned int*,char**) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct clone *clone, struct dm_arg_set *as, char **error)
{
	int r;
	unsigned int region_size;
	struct dm_arg arg;

	arg.min = MIN_REGION_SIZE;
	arg.max = MAX_REGION_SIZE;
	arg.error = "Invalid region size";

	r = FUNC1(&arg, as, &region_size, error);
	if (r)
		return r;

	/* Check region size is a power of 2 */
	if (!FUNC2(region_size)) {
		*error = "Region size is not a power of 2";
		return -EINVAL;
	}

	/* Validate the region size against the device logical block size */
	if (region_size % (FUNC0(clone->source_dev->bdev) >> 9) ||
	    region_size % (FUNC0(clone->dest_dev->bdev) >> 9)) {
		*error = "Region size is not a multiple of device logical block size";
		return -EINVAL;
	}

	clone->region_size = region_size;

	return 0;
}