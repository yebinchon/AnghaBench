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
struct TYPE_2__ {int /*<<< orphan*/  page; } ;
struct intel_vgpu_ppgtt_spt {TYPE_1__ shadow_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu_ppgtt_spt*) ; 

__attribute__((used)) static void FUNC2(struct intel_vgpu_ppgtt_spt *spt)
{
	FUNC0(spt->shadow_page.page);
	FUNC1(spt);
}