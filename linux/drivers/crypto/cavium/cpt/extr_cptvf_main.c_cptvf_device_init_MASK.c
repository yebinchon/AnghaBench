#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_6__ {TYPE_2__* queue; } ;
struct cpt_vf {int /*<<< orphan*/  flags; TYPE_3__ cqinfo; } ;
struct TYPE_5__ {TYPE_1__* qhead; } ;
struct TYPE_4__ {scalar_t__ dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPT_FLAG_DEVICE_READY ; 
 int /*<<< orphan*/  CPT_TIMER_THOLD ; 
 int /*<<< orphan*/  FUNC0 (struct cpt_vf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpt_vf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpt_vf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpt_vf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cpt_vf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cpt_vf*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct cpt_vf *cptvf)
{
	u64 base_addr = 0;

	/* Disable the VQ */
	FUNC0(cptvf, 0);
	/* Reset the doorbell */
	FUNC3(cptvf, 0);
	/* Clear inflight */
	FUNC4(cptvf, 0);
	/* Write VQ SADDR */
	/* TODO: for now only one queue, so hard coded */
	base_addr = (u64)(cptvf->cqinfo.queue[0].qhead->dma_addr);
	FUNC5(cptvf, base_addr);
	/* Configure timerhold / coalescence */
	FUNC2(cptvf, CPT_TIMER_THOLD);
	FUNC1(cptvf, 1);
	/* Enable the VQ */
	FUNC0(cptvf, 1);
	/* Flag the VF ready */
	cptvf->flags |= CPT_FLAG_DEVICE_READY;
}