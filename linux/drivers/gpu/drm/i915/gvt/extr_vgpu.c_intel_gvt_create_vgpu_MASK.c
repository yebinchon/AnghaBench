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
struct intel_vgpu_type {int /*<<< orphan*/  resolution; int /*<<< orphan*/  weight; int /*<<< orphan*/  fence; void* high_gm_size; void* low_gm_size; } ;
struct intel_vgpu_creation_params {int primary; void* high_gm_sz; void* low_gm_sz; int /*<<< orphan*/  resolution; int /*<<< orphan*/  weight; int /*<<< orphan*/  fence_sz; scalar_t__ handle; } ;
struct intel_vgpu {int dummy; } ;
struct intel_gvt {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*) ; 
 struct intel_vgpu* FUNC2 (struct intel_gvt*,struct intel_vgpu_creation_params*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_gvt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct intel_vgpu *FUNC6(struct intel_gvt *gvt,
				struct intel_vgpu_type *type)
{
	struct intel_vgpu_creation_params param;
	struct intel_vgpu *vgpu;

	param.handle = 0;
	param.primary = 1;
	param.low_gm_sz = type->low_gm_size;
	param.high_gm_sz = type->high_gm_size;
	param.fence_sz = type->fence;
	param.weight = type->weight;
	param.resolution = type->resolution;

	/* XXX current param based on MB */
	param.low_gm_sz = FUNC0(param.low_gm_sz);
	param.high_gm_sz = FUNC0(param.high_gm_sz);

	FUNC4(&gvt->lock);
	vgpu = FUNC2(gvt, &param);
	if (!FUNC1(vgpu))
		/* calculate left instance change for types */
		FUNC3(gvt);
	FUNC5(&gvt->lock);

	return vgpu;
}