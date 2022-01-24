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
struct dm_target {char* error; int num_flush_bios; struct dm_origin* private; int /*<<< orphan*/  table; } ;
struct dm_origin {struct dm_target* ti; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct dm_target*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_origin*) ; 
 struct dm_origin* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dm_target *ti, unsigned int argc, char **argv)
{
	int r;
	struct dm_origin *o;

	if (argc != 1) {
		ti->error = "origin: incorrect number of arguments";
		return -EINVAL;
	}

	o = FUNC3(sizeof(struct dm_origin), GFP_KERNEL);
	if (!o) {
		ti->error = "Cannot allocate private origin structure";
		r = -ENOMEM;
		goto bad_alloc;
	}

	r = FUNC0(ti, argv[0], FUNC1(ti->table), &o->dev);
	if (r) {
		ti->error = "Cannot get target device";
		goto bad_open;
	}

	o->ti = ti;
	ti->private = o;
	ti->num_flush_bios = 1;

	return 0;

bad_open:
	FUNC2(o);
bad_alloc:
	return r;
}