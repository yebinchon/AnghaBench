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
struct gendisk {int dummy; } ;
struct dm_table {int /*<<< orphan*/  md; scalar_t__ integrity_supported; scalar_t__ integrity_added; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct gendisk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct gendisk* FUNC5 (struct dm_table*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct dm_table *t)
{
	struct gendisk *template_disk = NULL;

	if (t->integrity_added)
		return;

	if (t->integrity_supported) {
		/*
		 * Verify that the original integrity profile
		 * matches all the devices in this table.
		 */
		template_disk = FUNC5(t);
		if (template_disk &&
		    FUNC1(FUNC4(t->md), template_disk) >= 0)
			return;
	}

	if (FUNC6(FUNC4(t->md))) {
		FUNC0("%s: unable to establish an integrity profile",
		       FUNC3(t->md));
		FUNC2(FUNC4(t->md));
	}
}