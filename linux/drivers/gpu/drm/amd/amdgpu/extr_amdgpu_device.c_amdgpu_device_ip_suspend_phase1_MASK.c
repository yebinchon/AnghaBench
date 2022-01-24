#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct amdgpu_device {int num_ip_blocks; TYPE_4__* ip_blocks; } ;
struct TYPE_7__ {int hw; int /*<<< orphan*/  valid; } ;
struct TYPE_8__ {TYPE_3__ status; TYPE_2__* version; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__* funcs; } ;
struct TYPE_5__ {int (* suspend ) (struct amdgpu_device*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_CG_STATE_UNGATE ; 
 scalar_t__ AMD_IP_BLOCK_TYPE_DCE ; 
 int /*<<< orphan*/  AMD_PG_STATE_UNGATE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev)
{
	int i, r;

	FUNC2(adev, AMD_PG_STATE_UNGATE);
	FUNC1(adev, AMD_CG_STATE_UNGATE);

	for (i = adev->num_ip_blocks - 1; i >= 0; i--) {
		if (!adev->ip_blocks[i].status.valid)
			continue;
		/* displays are handled separately */
		if (adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_DCE) {
			/* XXX handle errors */
			r = adev->ip_blocks[i].version->funcs->suspend(adev);
			/* XXX handle errors */
			if (r) {
				FUNC0("suspend of IP block <%s> failed %d\n",
					  adev->ip_blocks[i].version->funcs->name, r);
				return r;
			}
			adev->ip_blocks[i].status.hw = false;
		}
	}

	return 0;
}