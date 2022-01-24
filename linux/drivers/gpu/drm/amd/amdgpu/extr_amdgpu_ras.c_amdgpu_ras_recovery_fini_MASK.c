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
struct ras_err_handler_data {struct ras_err_handler_data* bps; } ;
struct amdgpu_ras {int /*<<< orphan*/  recovery_lock; struct ras_err_handler_data* eh_data; int /*<<< orphan*/  recovery_work; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 struct amdgpu_ras* FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ras_err_handler_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev)
{
	struct amdgpu_ras *con = FUNC0(adev);
	struct ras_err_handler_data *data = con->eh_data;

	FUNC3(&con->recovery_work);
	FUNC2(adev);
	FUNC1(adev);

	FUNC5(&con->recovery_lock);
	con->eh_data = NULL;
	FUNC4(data->bps);
	FUNC4(data);
	FUNC6(&con->recovery_lock);

	return 0;
}