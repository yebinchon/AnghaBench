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
struct efa_comp_ctx {int dummy; } ;
struct efa_com_admin_queue {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_AQ_STATE_POLLING_BIT ; 
 int FUNC0 (struct efa_comp_ctx*,struct efa_com_admin_queue*) ; 
 int FUNC1 (struct efa_comp_ctx*,struct efa_com_admin_queue*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct efa_comp_ctx *comp_ctx,
					     struct efa_com_admin_queue *aq)
{
	if (FUNC2(EFA_AQ_STATE_POLLING_BIT, &aq->state))
		return FUNC1(comp_ctx, aq);

	return FUNC0(comp_ctx, aq);
}