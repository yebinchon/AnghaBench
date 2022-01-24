#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tegra_bpmp_channel {TYPE_4__* bpmp; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_8__ {TYPE_3__* soc; } ;
struct TYPE_5__ {unsigned long timeout; } ;
struct TYPE_6__ {TYPE_1__ cpu_tx; } ;
struct TYPE_7__ {TYPE_2__ channels; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct tegra_bpmp_channel*) ; 

__attribute__((used)) static int FUNC4(struct tegra_bpmp_channel *channel)
{
	unsigned long timeout = channel->bpmp->soc->channels.cpu_tx.timeout;
	ktime_t end;

	end = FUNC0(FUNC2(), timeout);

	do {
		if (FUNC3(channel))
			return 0;
	} while (FUNC1(FUNC2(), end));

	return -ETIMEDOUT;
}