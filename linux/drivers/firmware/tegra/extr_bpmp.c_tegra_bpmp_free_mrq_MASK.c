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
struct tegra_bpmp_mrq {int /*<<< orphan*/  list; } ;
struct tegra_bpmp {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct tegra_bpmp_mrq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct tegra_bpmp_mrq* FUNC4 (struct tegra_bpmp*,unsigned int) ; 

void FUNC5(struct tegra_bpmp *bpmp, unsigned int mrq, void *data)
{
	struct tegra_bpmp_mrq *entry;
	unsigned long flags;

	FUNC2(&bpmp->lock, flags);

	entry = FUNC4(bpmp, mrq);
	if (!entry)
		goto unlock;

	FUNC1(&entry->list);
	FUNC0(bpmp->dev, entry);

unlock:
	FUNC3(&bpmp->lock, flags);
}