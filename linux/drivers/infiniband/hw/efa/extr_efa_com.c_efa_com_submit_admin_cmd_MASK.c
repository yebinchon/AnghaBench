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
struct efa_comp_ctx {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct efa_com_admin_queue {int /*<<< orphan*/  state; TYPE_1__ sq; int /*<<< orphan*/  efa_dev; } ;
struct efa_admin_aq_entry {int dummy; } ;
struct efa_admin_acq_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_AQ_STATE_RUNNING_BIT ; 
 int /*<<< orphan*/  ENODEV ; 
 struct efa_comp_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct efa_comp_ctx*) ; 
 struct efa_comp_ctx* FUNC2 (struct efa_com_admin_queue*,struct efa_admin_aq_entry*,size_t,struct efa_admin_acq_entry*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct efa_comp_ctx *FUNC8(struct efa_com_admin_queue *aq,
						     struct efa_admin_aq_entry *cmd,
						     size_t cmd_size_in_bytes,
						     struct efa_admin_acq_entry *comp,
						     size_t comp_size_in_bytes)
{
	struct efa_comp_ctx *comp_ctx;

	FUNC5(&aq->sq.lock);
	if (!FUNC7(EFA_AQ_STATE_RUNNING_BIT, &aq->state)) {
		FUNC4(aq->efa_dev, "Admin queue is closed\n");
		FUNC6(&aq->sq.lock);
		return FUNC0(-ENODEV);
	}

	comp_ctx = FUNC2(aq, cmd, cmd_size_in_bytes, comp,
					      comp_size_in_bytes);
	FUNC6(&aq->sq.lock);
	if (FUNC1(comp_ctx))
		FUNC3(EFA_AQ_STATE_RUNNING_BIT, &aq->state);

	return comp_ctx;
}