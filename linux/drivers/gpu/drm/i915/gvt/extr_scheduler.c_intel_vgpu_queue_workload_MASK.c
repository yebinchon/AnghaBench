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
struct intel_vgpu_workload {size_t ring_id; TYPE_2__* vgpu; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/ * waitq; } ;
struct TYPE_6__ {TYPE_1__ scheduler; } ;
struct TYPE_5__ {TYPE_3__* gvt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,size_t) ; 

void FUNC4(struct intel_vgpu_workload *workload)
{
	FUNC1(&workload->list,
		FUNC3(workload->vgpu, workload->ring_id));
	FUNC0(workload->vgpu->gvt);
	FUNC2(&workload->vgpu->gvt->scheduler.waitq[workload->ring_id]);
}