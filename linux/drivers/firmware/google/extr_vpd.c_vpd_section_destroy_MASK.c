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
struct vpd_section {int enabled; int /*<<< orphan*/  baseaddr; int /*<<< orphan*/  raw_name; int /*<<< orphan*/  bin_attr; int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vpd_kobj ; 
 int /*<<< orphan*/  FUNC4 (struct vpd_section*) ; 

__attribute__((used)) static int FUNC5(struct vpd_section *sec)
{
	if (sec->enabled) {
		FUNC4(sec);
		FUNC1(sec->kobj);
		FUNC3(vpd_kobj, &sec->bin_attr);
		FUNC0(sec->raw_name);
		FUNC2(sec->baseaddr);
		sec->enabled = false;
	}

	return 0;
}