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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_bpmp_channel {unsigned int index; struct tegra_bpmp* bpmp; int /*<<< orphan*/  completion; void* ob; void* ib; } ;
struct tegra_bpmp {int /*<<< orphan*/  dev; struct tegra210_bpmp* priv; } ;
struct tegra210_bpmp {scalar_t__ atomics; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int TRIGGER_CMD_GET ; 
 unsigned int TRIGGER_ID_SHIFT ; 
 scalar_t__ TRIGGER_OFFSET ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct tegra_bpmp_channel *channel,
				      struct tegra_bpmp *bpmp,
				      unsigned int index)
{
	struct tegra210_bpmp *priv = bpmp->priv;
	u32 address;
	void *p;

	/* Retrieve channel base address from BPMP */
	FUNC4(index << TRIGGER_ID_SHIFT | TRIGGER_CMD_GET,
	       priv->atomics + TRIGGER_OFFSET);
	address = FUNC3(priv->atomics + FUNC0(index));

	p = FUNC1(bpmp->dev, address, 0x80);
	if (!p)
		return -ENOMEM;

	channel->ib = p;
	channel->ob = p;
	channel->index = index;
	FUNC2(&channel->completion);
	channel->bpmp = bpmp;

	return 0;
}