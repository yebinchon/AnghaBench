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
typedef  size_t u8 ;
typedef  int u32 ;
struct device {int dummy; } ;
struct brcm_message {int error; } ;
struct TYPE_4__ {int /*<<< orphan*/ * mbox; int /*<<< orphan*/  mb_send_fail; int /*<<< orphan*/  mb_no_spc; TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int CRYPTO_TFM_REQ_MAY_SLEEP ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  MBOX_SLEEP_MAX ; 
 int /*<<< orphan*/  MBOX_SLEEP_MIN ; 
 int SPU_MB_RETRY_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 TYPE_2__ iproc_priv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct brcm_message*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct brcm_message *mssg, u32 flags,
				u8 chan_idx)
{
	int err;
	int retry_cnt = 0;
	struct device *dev = &(iproc_priv.pdev->dev);

	err = FUNC3(iproc_priv.mbox[chan_idx], mssg);
	if (flags & CRYPTO_TFM_REQ_MAY_SLEEP) {
		while ((err == -ENOBUFS) && (retry_cnt < SPU_MB_RETRY_MAX)) {
			/*
			 * Mailbox queue is full. Since MAY_SLEEP is set, assume
			 * not in atomic context and we can wait and try again.
			 */
			retry_cnt++;
			FUNC5(MBOX_SLEEP_MIN, MBOX_SLEEP_MAX);
			err = FUNC3(iproc_priv.mbox[chan_idx],
						mssg);
			FUNC0(&iproc_priv.mb_no_spc);
		}
	}
	if (err < 0) {
		FUNC0(&iproc_priv.mb_send_fail);
		return err;
	}

	/* Check error returned by mailbox controller */
	err = mssg->error;
	if (FUNC4(err < 0)) {
		FUNC1(dev, "message error %d", err);
		/* Signal txdone for mailbox channel */
	}

	/* Signal txdone for mailbox channel */
	FUNC2(iproc_priv.mbox[chan_idx], err);
	return err;
}