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
struct TYPE_2__ {int /*<<< orphan*/  retval; } ;
struct mox_rwtm {int buf_phys; int /*<<< orphan*/  busy; int /*<<< orphan*/  buf; TYPE_1__ reply; int /*<<< orphan*/  cmd_done; int /*<<< orphan*/  mbox; } ;
struct hwrng {scalar_t__ priv; } ;
struct armada_37xx_rwtm_tx_msg {int* args; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MBOX_CMD_GET_RANDOM ; 
 int FUNC0 (int /*<<< orphan*/ ,struct armada_37xx_rwtm_tx_msg*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct hwrng *rng, void *data, size_t max, bool wait)
{
	struct mox_rwtm *rwtm = (struct mox_rwtm *) rng->priv;
	struct armada_37xx_rwtm_tx_msg msg;
	int ret;

	if (max > 4096)
		max = 4096;

	msg.command = MBOX_CMD_GET_RANDOM;
	msg.args[0] = 1;
	msg.args[1] = rwtm->buf_phys;
	msg.args[2] = (max + 3) & ~3;

	if (!wait) {
		if (!FUNC4(&rwtm->busy))
			return -EBUSY;
	} else {
		FUNC3(&rwtm->busy);
	}

	ret = FUNC0(rwtm->mbox, &msg);
	if (ret < 0)
		goto unlock_mutex;

	ret = FUNC6(&rwtm->cmd_done);
	if (ret < 0)
		goto unlock_mutex;

	ret = FUNC2(MBOX_CMD_GET_RANDOM, rwtm->reply.retval);
	if (ret < 0)
		goto unlock_mutex;

	FUNC1(data, rwtm->buf, max);
	ret = max;

unlock_mutex:
	FUNC5(&rwtm->busy);
	return ret;
}