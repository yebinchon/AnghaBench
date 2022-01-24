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
struct ras_err_handler_data {int dummy; } ;
struct amdgpu_ras {struct amdgpu_device* adev; int /*<<< orphan*/  in_recovery; int /*<<< orphan*/  recovery_work; int /*<<< orphan*/  recovery_lock; struct ras_err_handler_data* eh_data; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  amdgpu_ras_do_recovery ; 
 struct amdgpu_ras* FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ras_err_handler_data* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev)
{
	struct amdgpu_ras *con = FUNC1(adev);
	struct ras_err_handler_data **data = &con->eh_data;

	*data = FUNC5(sizeof(**data),
			GFP_KERNEL|__GFP_ZERO);
	if (!*data)
		return -ENOMEM;

	FUNC6(&con->recovery_lock);
	FUNC0(&con->recovery_work, amdgpu_ras_do_recovery);
	FUNC4(&con->in_recovery, 0);
	con->adev = adev;

	FUNC2(adev);
	FUNC3(adev);

	return 0;
}