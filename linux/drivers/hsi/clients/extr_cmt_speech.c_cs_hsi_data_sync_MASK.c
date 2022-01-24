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
struct cs_hsi_iface {TYPE_1__* cl; int /*<<< orphan*/  lock; int /*<<< orphan*/  datawait; int /*<<< orphan*/  data_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int CS_HSI_TRANSFER_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC10(struct cs_hsi_iface *hi)
{
	int r = 0;

	FUNC8(&hi->lock);

	if (!FUNC1(hi->data_state)) {
		FUNC2(&hi->cl->device, "hsi_data_sync break, idle\n");
		goto out;
	}

	for (;;) {
		int s;
		FUNC0(wait);
		if (!FUNC1(hi->data_state))
			goto out;
		if (FUNC7(current)) {
			r = -ERESTARTSYS;
			goto out;
		}
		/**
		 * prepare_to_wait must be called with hi->lock held
		 * so that callbacks can check for waitqueue_active()
		 */
		FUNC5(&hi->datawait, &wait, TASK_INTERRUPTIBLE);
		FUNC9(&hi->lock);
		s = FUNC6(
			FUNC4(CS_HSI_TRANSFER_TIMEOUT_MS));
		FUNC8(&hi->lock);
		FUNC3(&hi->datawait, &wait);
		if (!s) {
			FUNC2(&hi->cl->device,
				"hsi_data_sync timeout after %d ms\n",
				CS_HSI_TRANSFER_TIMEOUT_MS);
			r = -EIO;
			goto out;
		}
	}

out:
	FUNC9(&hi->lock);
	FUNC2(&hi->cl->device, "hsi_data_sync done with res %d\n", r);

	return r;
}