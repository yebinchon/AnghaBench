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
struct intel_vgpu {int /*<<< orphan*/  vgpu_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_ENGINES ; 
 int /*<<< orphan*/  FUNC0 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct intel_vgpu *vgpu)
{
	FUNC0(vgpu);

	FUNC3(&vgpu->vgpu_lock);
	FUNC1(vgpu, ALL_ENGINES);
	FUNC2(vgpu);
	FUNC4(&vgpu->vgpu_lock);
}