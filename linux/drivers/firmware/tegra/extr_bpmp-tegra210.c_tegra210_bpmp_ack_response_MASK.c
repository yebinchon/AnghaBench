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
struct tegra_bpmp_channel {int /*<<< orphan*/  index; TYPE_1__* bpmp; } ;
struct tegra210_bpmp {scalar_t__ arb_sema; } ;
struct TYPE_2__ {struct tegra210_bpmp* priv; } ;

/* Variables and functions */
 scalar_t__ CLR_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct tegra_bpmp_channel *channel)
{
	struct tegra210_bpmp *priv = channel->bpmp->priv;

	FUNC2(FUNC0(channel->index) ^ FUNC1(channel->index),
		     priv->arb_sema + CLR_OFFSET);

	return 0;
}