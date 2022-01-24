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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct intel_vgpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*,scalar_t__,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* pdps ; 

__attribute__((used)) static void FUNC2(struct intel_vgpu *vgpu,
		u64 ring_context_gpa, u32 pdp[8])
{
	u64 gpa;
	int i;

	gpa = ring_context_gpa + FUNC0(pdps[0].val);

	for (i = 0; i < 8; i++)
		FUNC1(vgpu,
				gpa + i * 8, &pdp[7 - i], 4);
}