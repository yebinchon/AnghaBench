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
struct tegra_bpmp_channel {TYPE_1__* ob; struct tegra_bpmp* bpmp; TYPE_2__* ib; } ;
struct tegra_bpmp {int dummy; } ;
struct TYPE_4__ {unsigned long flags; } ;
struct TYPE_3__ {int code; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 unsigned long MSG_ACK ; 
 size_t MSG_DATA_MIN_SZ ; 
 unsigned long MSG_RING ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int FUNC2 (struct tegra_bpmp_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_bpmp_channel*) ; 
 int FUNC4 (struct tegra_bpmp_channel*) ; 
 int FUNC5 (struct tegra_bpmp*) ; 

void FUNC6(struct tegra_bpmp_channel *channel, int code,
			   const void *data, size_t size)
{
	unsigned long flags = channel->ib->flags;
	struct tegra_bpmp *bpmp = channel->bpmp;
	int err;

	if (FUNC0(size > MSG_DATA_MIN_SZ))
		return;

	err = FUNC2(channel);
	if (FUNC0(err < 0))
		return;

	if ((flags & MSG_ACK) == 0)
		return;

	if (FUNC0(!FUNC3(channel)))
		return;

	channel->ob->code = code;

	if (data && size > 0)
		FUNC1(channel->ob->data, data, size);

	err = FUNC4(channel);
	if (FUNC0(err < 0))
		return;

	if (flags & MSG_RING) {
		err = FUNC5(bpmp);
		if (FUNC0(err < 0))
			return;
	}
}