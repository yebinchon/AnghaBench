#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cq_id; } ;
struct i40iw_sc_cq {TYPE_2__ cq_uk; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw; } ;
struct i40iw_device {int /*<<< orphan*/  allocated_cqs; TYPE_1__ sc_dev; } ;
struct i40iw_cq {int /*<<< orphan*/  kmem; int /*<<< orphan*/  user_mode; struct i40iw_sc_cq sc_cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct i40iw_device *iwdev, struct i40iw_cq *iwcq)
{
	struct i40iw_sc_cq *cq = &iwcq->sc_cq;

	if (!iwcq->user_mode)
		FUNC0(iwdev->sc_dev.hw, &iwcq->kmem);
	FUNC1(iwdev, iwdev->allocated_cqs, cq->cq_uk.cq_id);
}