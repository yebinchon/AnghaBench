#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dm_arg_set {int dummy; } ;
struct cache_args {TYPE_1__* metadata_dev; int /*<<< orphan*/  ti; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ DM_CACHE_METADATA_MAX_SECTORS_WARNING ; 
 int EINVAL ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  THIN_METADATA_MAX_SECTORS ; 
 int /*<<< orphan*/  FUNC1 (struct dm_arg_set*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_arg_set*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct cache_args *ca, struct dm_arg_set *as,
			      char **error)
{
	int r;
	sector_t metadata_dev_size;
	char b[BDEVNAME_SIZE];

	if (!FUNC1(as, error))
		return -EINVAL;

	r = FUNC3(ca->ti, FUNC4(as), FMODE_READ | FMODE_WRITE,
			  &ca->metadata_dev);
	if (r) {
		*error = "Error opening metadata device";
		return r;
	}

	metadata_dev_size = FUNC5(ca->metadata_dev);
	if (metadata_dev_size > DM_CACHE_METADATA_MAX_SECTORS_WARNING)
		FUNC0("Metadata device %s is larger than %u sectors: excess space will not be used.",
		       FUNC2(ca->metadata_dev->bdev, b), THIN_METADATA_MAX_SECTORS);

	return 0;
}