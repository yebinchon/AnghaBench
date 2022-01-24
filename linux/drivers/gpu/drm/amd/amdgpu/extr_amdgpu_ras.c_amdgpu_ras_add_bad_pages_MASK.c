#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ras_err_handler_data {int space_left; int /*<<< orphan*/  count; TYPE_1__* bps; } ;
struct amdgpu_ras {int /*<<< orphan*/  recovery_lock; struct ras_err_handler_data* eh_data; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {unsigned long bp; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct amdgpu_ras* FUNC0 (struct amdgpu_device*) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*,struct ras_err_handler_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct amdgpu_device *adev,
		unsigned long *bps, int pages)
{
	struct amdgpu_ras *con = FUNC0(adev);
	struct ras_err_handler_data *data;
	int i = pages;
	int ret = 0;

	if (!con || !con->eh_data || !bps || pages <= 0)
		return 0;

	FUNC2(&con->recovery_lock);
	data = con->eh_data;
	if (!data)
		goto out;

	if (data->space_left <= pages)
		if (FUNC1(adev, data, pages)) {
			ret = -ENOMEM;
			goto out;
		}

	while (i--)
		data->bps[data->count++].bp = bps[i];

	data->space_left -= pages;
out:
	FUNC3(&con->recovery_lock);

	return ret;
}