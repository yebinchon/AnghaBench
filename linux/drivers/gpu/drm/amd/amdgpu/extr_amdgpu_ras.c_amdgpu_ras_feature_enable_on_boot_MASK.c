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
struct ras_common_if {int /*<<< orphan*/  block; } ;
struct amdgpu_ras {int flags; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int AMDGPU_RAS_FLAG_INIT_BY_VBIOS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (struct amdgpu_device*,struct ras_common_if*,int) ; 
 int FUNC2 (struct amdgpu_device*,struct ras_common_if*,int) ; 
 struct amdgpu_ras* FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct amdgpu_device *adev,
		struct ras_common_if *head, bool enable)
{
	struct amdgpu_ras *con = FUNC3(adev);
	int ret;

	if (!con)
		return -EINVAL;

	if (con->flags & AMDGPU_RAS_FLAG_INIT_BY_VBIOS) {
		if (enable) {
			/* There is no harm to issue a ras TA cmd regardless of
			 * the currecnt ras state.
			 * If current state == target state, it will do nothing
			 * But sometimes it requests driver to reset and repost
			 * with error code -EAGAIN.
			 */
			ret = FUNC2(adev, head, 1);
			/* With old ras TA, we might fail to enable ras.
			 * Log it and just setup the object.
			 * TODO need remove this WA in the future.
			 */
			if (ret == -EINVAL) {
				ret = FUNC1(adev, head, 1);
				if (!ret)
					FUNC0("RAS INFO: %s setup object\n",
						FUNC4(head->block));
			}
		} else {
			/* setup the object then issue a ras TA disable cmd.*/
			ret = FUNC1(adev, head, 1);
			if (ret)
				return ret;

			ret = FUNC2(adev, head, 0);
		}
	} else
		ret = FUNC2(adev, head, enable);

	return ret;
}