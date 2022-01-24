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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct rdma_nl_cbs {int /*<<< orphan*/  doit; int /*<<< orphan*/  dump; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_table; int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 unsigned int RDMA_NL_NLDEV ; 
 struct rdma_nl_cbs* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_net ; 
 TYPE_1__* rdma_nl_types ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const struct rdma_nl_cbs *
FUNC5(const struct sk_buff *skb, unsigned int type, unsigned int op)
{
	const struct rdma_nl_cbs *cb_table;

	/*
	 * Currently only NLDEV client is supporting netlink commands in
	 * non init_net net namespace.
	 */
	if (FUNC3(skb->sk) != &init_net && type != RDMA_NL_NLDEV)
		return NULL;

	cb_table = FUNC0(rdma_nl_types[type].cb_table);
	if (!cb_table) {
		/*
		 * Didn't get valid reference of the table, attempt module
		 * load once.
		 */
		FUNC4(&rdma_nl_types[type].sem);

		FUNC2("rdma-netlink-subsys-%d", type);

		FUNC1(&rdma_nl_types[type].sem);
		cb_table = FUNC0(rdma_nl_types[type].cb_table);
	}
	if (!cb_table || (!cb_table[op].dump && !cb_table[op].doit))
		return NULL;
	return cb_table;
}