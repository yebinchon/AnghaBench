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
struct ras_ih_data {scalar_t__ inuse; int /*<<< orphan*/  ring; int /*<<< orphan*/  ih_work; } ;
struct ras_manager {struct ras_ih_data ih_data; } ;
struct ras_ih_if {int /*<<< orphan*/  head; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ras_manager* FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ras_ih_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ras_manager*) ; 

int FUNC5(struct amdgpu_device *adev,
		struct ras_ih_if *info)
{
	struct ras_manager *obj = FUNC0(adev, &info->head);
	struct ras_ih_data *data;

	if (!obj)
		return -EINVAL;

	data = &obj->ih_data;
	if (data->inuse == 0)
		return 0;

	FUNC1(&data->ih_work);

	FUNC2(data->ring);
	FUNC3(data, 0, sizeof(*data));
	FUNC4(obj);

	return 0;
}