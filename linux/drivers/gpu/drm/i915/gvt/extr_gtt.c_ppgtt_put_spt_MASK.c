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
struct intel_vgpu_ppgtt_spt {int /*<<< orphan*/  refcount; TYPE_1__* vgpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct intel_vgpu_ppgtt_spt*,int,int) ; 

__attribute__((used)) static inline int FUNC3(struct intel_vgpu_ppgtt_spt *spt)
{
	int v = FUNC1(&spt->refcount);

	FUNC2(spt->vgpu->id, "dec", spt, v, (v - 1));
	return FUNC0(&spt->refcount);
}