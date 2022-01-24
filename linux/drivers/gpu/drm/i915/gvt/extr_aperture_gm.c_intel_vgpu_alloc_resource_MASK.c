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
struct intel_vgpu_creation_params {int dummy; } ;
struct intel_vgpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct intel_vgpu*,struct intel_vgpu_creation_params*) ; 
 int FUNC1 (struct intel_vgpu*) ; 
 int FUNC2 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_vgpu*) ; 

int FUNC5(struct intel_vgpu *vgpu,
		struct intel_vgpu_creation_params *param)
{
	int ret;

	ret = FUNC0(vgpu, param);
	if (ret)
		return ret;

	ret = FUNC2(vgpu);
	if (ret)
		goto out_free_resource;

	ret = FUNC1(vgpu);
	if (ret)
		goto out_free_vgpu_gm;

	return 0;

out_free_vgpu_gm:
	FUNC4(vgpu);
out_free_resource:
	FUNC3(vgpu);
	return ret;
}