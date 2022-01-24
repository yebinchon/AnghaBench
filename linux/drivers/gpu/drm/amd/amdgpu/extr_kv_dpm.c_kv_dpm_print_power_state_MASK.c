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
struct kv_ps {int num_levels; struct kv_pl* levels; } ;
struct kv_pl {int /*<<< orphan*/  vddc_index; int /*<<< orphan*/  sclk; } ;
struct amdgpu_ps {int /*<<< orphan*/  dclk; int /*<<< orphan*/  vclk; int /*<<< orphan*/  caps; int /*<<< orphan*/  class2; int /*<<< orphan*/  class; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,struct amdgpu_ps*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 struct kv_ps* FUNC4 (struct amdgpu_ps*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC6(void *handle, void *request_ps)
{
	int i;
	struct amdgpu_ps *rps = (struct amdgpu_ps *)request_ps;
	struct kv_ps *ps = FUNC4(rps);
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	FUNC1(rps->class, rps->class2);
	FUNC0(rps->caps);
	FUNC5("\tuvd    vclk: %d dclk: %d\n", rps->vclk, rps->dclk);
	for (i = 0; i < ps->num_levels; i++) {
		struct kv_pl *pl = &ps->levels[i];
		FUNC5("\t\tpower level %d    sclk: %u vddc: %u\n",
		       i, pl->sclk,
		       FUNC3(adev, pl->vddc_index));
	}
	FUNC2(adev, rps);
}