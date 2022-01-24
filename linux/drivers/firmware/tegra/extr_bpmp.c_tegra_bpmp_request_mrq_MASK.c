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
typedef  scalar_t__ tegra_bpmp_mrq_handler_t ;
struct tegra_bpmp_mrq {unsigned int mrq; int /*<<< orphan*/  list; void* data; scalar_t__ handler; } ;
struct tegra_bpmp {int /*<<< orphan*/  lock; int /*<<< orphan*/  mrqs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct tegra_bpmp_mrq* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct tegra_bpmp *bpmp, unsigned int mrq,
			   tegra_bpmp_mrq_handler_t handler, void *data)
{
	struct tegra_bpmp_mrq *entry;
	unsigned long flags;

	if (!handler)
		return -EINVAL;

	entry = FUNC0(bpmp->dev, sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	FUNC2(&bpmp->lock, flags);

	entry->mrq = mrq;
	entry->handler = handler;
	entry->data = data;
	FUNC1(&entry->list, &bpmp->mrqs);

	FUNC3(&bpmp->lock, flags);

	return 0;
}