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
struct TYPE_4__ {int /*<<< orphan*/  ret; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct tegra_bpmp_message {TYPE_2__ rx; TYPE_1__ tx; int /*<<< orphan*/  mrq; } ;
struct tegra_bpmp_channel {int dummy; } ;
struct tegra_bpmp {int /*<<< orphan*/  atomic_tx_lock; struct tegra_bpmp_channel* tx_channel; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  MSG_ACK ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct tegra_bpmp_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct tegra_bpmp_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_bpmp_message*) ; 
 int FUNC7 (struct tegra_bpmp*) ; 
 int FUNC8 (struct tegra_bpmp_channel*) ; 

int FUNC9(struct tegra_bpmp *bpmp,
			       struct tegra_bpmp_message *msg)
{
	struct tegra_bpmp_channel *channel;
	int err;

	if (FUNC0(!FUNC2()))
		return -EPERM;

	if (!FUNC6(msg))
		return -EINVAL;

	channel = bpmp->tx_channel;

	FUNC3(&bpmp->atomic_tx_lock);

	err = FUNC5(channel, msg->mrq, MSG_ACK,
				       msg->tx.data, msg->tx.size);
	if (err < 0) {
		FUNC4(&bpmp->atomic_tx_lock);
		return err;
	}

	FUNC4(&bpmp->atomic_tx_lock);

	err = FUNC7(bpmp);
	if (err < 0)
		return err;

	err = FUNC8(channel);
	if (err < 0)
		return err;

	return FUNC1(channel, msg->rx.data, msg->rx.size,
					 &msg->rx.ret);
}