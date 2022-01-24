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
struct ib_udata {int dummy; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
struct i40iw_sc_cq {int dummy; } ;
struct i40iw_device {int dummy; } ;
struct i40iw_cq {struct i40iw_sc_cq sc_cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i40iw_device*,struct i40iw_cq*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_device*,struct i40iw_sc_cq*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_device*) ; 
 struct i40iw_cq* FUNC3 (struct ib_cq*) ; 
 struct i40iw_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ib_cq *ib_cq, struct ib_udata *udata)
{
	struct i40iw_cq *iwcq;
	struct i40iw_device *iwdev;
	struct i40iw_sc_cq *cq;

	iwcq = FUNC3(ib_cq);
	iwdev = FUNC4(ib_cq->device);
	cq = &iwcq->sc_cq;
	FUNC1(iwdev, cq);
	FUNC0(iwdev, iwcq);
	FUNC2(iwdev);
}