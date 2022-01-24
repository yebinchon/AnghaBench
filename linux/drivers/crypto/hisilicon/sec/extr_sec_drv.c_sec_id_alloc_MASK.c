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
struct sec_dev_info {int sec_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int SEC_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sec_dev_info** sec_devices ; 
 int /*<<< orphan*/  sec_id_lock ; 

__attribute__((used)) static int FUNC2(struct sec_dev_info *info)
{
	int ret = 0;
	int i;

	FUNC0(&sec_id_lock);

	for (i = 0; i < SEC_MAX_DEVICES; i++)
		if (!sec_devices[i])
			break;
	if (i == SEC_MAX_DEVICES) {
		ret = -ENOMEM;
		goto unlock;
	}
	info->sec_id = i;
	sec_devices[info->sec_id] = info;

unlock:
	FUNC1(&sec_id_lock);

	return ret;
}