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
struct i40iw_sc_dev {int /*<<< orphan*/  hw; int /*<<< orphan*/  ccq; TYPE_1__* ccq_ops; } ;
struct i40iw_ccq {int /*<<< orphan*/  mem_cq; } ;
struct i40iw_device {int /*<<< orphan*/  reset; struct i40iw_ccq ccq; struct i40iw_sc_dev sc_dev; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {int (* ccq_destroy ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct i40iw_device *iwdev)
{
	struct i40iw_sc_dev *dev = &iwdev->sc_dev;
	struct i40iw_ccq *ccq = &iwdev->ccq;
	enum i40iw_status_code status = 0;

	if (!iwdev->reset)
		status = dev->ccq_ops->ccq_destroy(dev->ccq, 0, true);
	if (status)
		FUNC1("ccq destroy failed %d\n", status);
	FUNC0(dev->hw, &ccq->mem_cq);
}