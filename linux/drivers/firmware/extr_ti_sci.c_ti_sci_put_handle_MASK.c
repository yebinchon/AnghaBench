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
struct ti_sci_info {int /*<<< orphan*/  users; } ;
struct ti_sci_handle {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ti_sci_handle const*) ; 
 int FUNC1 (struct ti_sci_handle const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ti_sci_info* FUNC3 (struct ti_sci_handle const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ti_sci_list_mutex ; 

int FUNC6(const struct ti_sci_handle *handle)
{
	struct ti_sci_info *info;

	if (FUNC0(handle))
		return FUNC1(handle);
	if (!handle)
		return -EINVAL;

	info = FUNC3(handle);
	FUNC4(&ti_sci_list_mutex);
	if (!FUNC2(!info->users))
		info->users--;
	FUNC5(&ti_sci_list_mutex);

	return 0;
}