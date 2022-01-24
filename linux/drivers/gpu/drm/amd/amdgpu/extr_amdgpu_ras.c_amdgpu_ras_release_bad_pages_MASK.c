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
struct ras_err_handler_data {int last_reserved; TYPE_1__* bps; } ;
struct amdgpu_ras {int /*<<< orphan*/  recovery_lock; struct ras_err_handler_data* eh_data; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_2__ {struct amdgpu_bo* bo; } ;

/* Variables and functions */
 struct amdgpu_ras* FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev)
{
	struct amdgpu_ras *con = FUNC0(adev);
	struct ras_err_handler_data *data;
	struct amdgpu_bo *bo;
	int i;

	if (!con || !con->eh_data)
		return 0;

	FUNC2(&con->recovery_lock);
	data = con->eh_data;
	if (!data)
		goto out;

	for (i = data->last_reserved - 1; i >= 0; i--) {
		bo = data->bps[i].bo;

		FUNC1(adev, &bo);

		data->bps[i].bo = bo;
		data->last_reserved = i;
	}
out:
	FUNC3(&con->recovery_lock);
	return 0;
}