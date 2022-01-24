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
struct mapped_device {int dummy; } ;
struct gendisk {int /*<<< orphan*/  disk_name; } ;
struct dm_table {int integrity_supported; struct mapped_device* md; scalar_t__ integrity_added; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gendisk*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct gendisk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*) ; 
 struct gendisk* FUNC6 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dm_table *t)
{
	struct mapped_device *md = t->md;
	struct gendisk *template_disk = NULL;

	/* If target handles integrity itself do not register it here. */
	if (t->integrity_added)
		return 0;

	template_disk = FUNC6(t);
	if (!template_disk)
		return 0;

	if (!FUNC7(FUNC5(md))) {
		t->integrity_supported = true;
		/*
		 * Register integrity profile during table load; we can do
		 * this because the final profile must match during resume.
		 */
		FUNC3(FUNC5(md),
				       FUNC1(template_disk));
		return 0;
	}

	/*
	 * If DM device already has an initialized integrity
	 * profile the new profile should not conflict.
	 */
	if (FUNC2(FUNC5(md), template_disk) < 0) {
		FUNC0("%s: conflict with existing integrity profile: "
		       "%s profile mismatch",
		       FUNC4(t->md),
		       template_disk->disk_name);
		return 1;
	}

	/* Preserve existing integrity profile */
	t->integrity_supported = true;
	return 0;
}