#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ret; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct tegra_bpmp_message {TYPE_5__ rx; TYPE_1__ tx; int /*<<< orphan*/  mrq; } ;
struct tegra_bpmp_channel {int /*<<< orphan*/  completion; } ;
struct tegra_bpmp {TYPE_4__* soc; } ;
struct TYPE_7__ {int /*<<< orphan*/  timeout; } ;
struct TYPE_8__ {TYPE_2__ thread; } ;
struct TYPE_9__ {TYPE_3__ channels; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (struct tegra_bpmp_channel*) ; 
 int FUNC1 (struct tegra_bpmp_channel*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct tegra_bpmp_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_bpmp_message*) ; 
 int FUNC6 (struct tegra_bpmp*) ; 
 struct tegra_bpmp_channel* FUNC7 (struct tegra_bpmp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC10(struct tegra_bpmp *bpmp,
			struct tegra_bpmp_message *msg)
{
	struct tegra_bpmp_channel *channel;
	unsigned long timeout;
	int err;

	if (FUNC2(FUNC3()))
		return -EPERM;

	if (!FUNC5(msg))
		return -EINVAL;

	channel = FUNC7(bpmp, msg->mrq, msg->tx.data,
					    msg->tx.size);
	if (FUNC0(channel))
		return FUNC1(channel);

	err = FUNC6(bpmp);
	if (err < 0)
		return err;

	timeout = FUNC8(bpmp->soc->channels.thread.timeout);

	err = FUNC9(&channel->completion, timeout);
	if (err == 0)
		return -ETIMEDOUT;

	return FUNC4(channel, msg->rx.data, msg->rx.size,
				       &msg->rx.ret);
}