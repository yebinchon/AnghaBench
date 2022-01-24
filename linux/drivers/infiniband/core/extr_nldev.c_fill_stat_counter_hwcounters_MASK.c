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
struct sk_buff {int dummy; } ;
struct rdma_hw_stats {int num_counters; int /*<<< orphan*/ * value; int /*<<< orphan*/ * names; } ;
struct rdma_counter {struct rdma_hw_stats* stats; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_STAT_HWCOUNTERS ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *msg,
					struct rdma_counter *counter)
{
	struct rdma_hw_stats *st = counter->stats;
	struct nlattr *table_attr;
	int i;

	table_attr = FUNC3(msg, RDMA_NLDEV_ATTR_STAT_HWCOUNTERS);
	if (!table_attr)
		return -EMSGSIZE;

	for (i = 0; i < st->num_counters; i++)
		if (FUNC0(msg, st->names[i], st->value[i]))
			goto err;

	FUNC2(msg, table_attr);
	return 0;

err:
	FUNC1(msg, table_attr);
	return -EMSGSIZE;
}