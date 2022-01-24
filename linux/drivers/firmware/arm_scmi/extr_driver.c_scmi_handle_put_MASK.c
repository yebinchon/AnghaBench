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
struct scmi_info {int /*<<< orphan*/  users; } ;
struct scmi_handle {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct scmi_info* FUNC1 (struct scmi_handle const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scmi_list_mutex ; 

int FUNC4(const struct scmi_handle *handle)
{
	struct scmi_info *info;

	if (!handle)
		return -EINVAL;

	info = FUNC1(handle);
	FUNC2(&scmi_list_mutex);
	if (!FUNC0(!info->users))
		info->users--;
	FUNC3(&scmi_list_mutex);

	return 0;
}