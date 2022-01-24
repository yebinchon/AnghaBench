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
struct dm_dirty_log_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct dm_dirty_log_type* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static struct dm_dirty_log_type *FUNC6(const char *type_name)
{
	char *p, *type_name_dup;
	struct dm_dirty_log_type *log_type;

	if (!type_name)
		return NULL;

	log_type = FUNC1(type_name);
	if (log_type)
		return log_type;

	type_name_dup = FUNC3(type_name, GFP_KERNEL);
	if (!type_name_dup) {
		FUNC0("No memory left to attempt log module load for \"%s\"",
		       type_name);
		return NULL;
	}

	while (FUNC4("dm-log-%s", type_name_dup) ||
	       !(log_type = FUNC1(type_name))) {
		p = FUNC5(type_name_dup, '-');
		if (!p)
			break;
		p[0] = '\0';
	}

	if (!log_type)
		FUNC0("Module for logging type \"%s\" not found.", type_name);

	FUNC2(type_name_dup);

	return log_type;
}