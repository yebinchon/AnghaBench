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
struct i40iw_cqp_request {int /*<<< orphan*/  refcount; } ;
struct i40iw_cqp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_cqp*,struct i40iw_cqp_request*) ; 

void FUNC2(struct i40iw_cqp *cqp,
			   struct i40iw_cqp_request *cqp_request)
{
	if (FUNC0(&cqp_request->refcount))
		FUNC1(cqp, cqp_request);
}