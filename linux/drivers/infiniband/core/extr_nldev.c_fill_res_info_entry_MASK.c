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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_PAD ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_RES_SUMMARY_ENTRY ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_RES_SUMMARY_ENTRY_CURR ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_RES_SUMMARY_ENTRY_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *msg,
			       const char *name, u64 curr)
{
	struct nlattr *entry_attr;

	entry_attr = FUNC2(msg,
					   RDMA_NLDEV_ATTR_RES_SUMMARY_ENTRY);
	if (!entry_attr)
		return -EMSGSIZE;

	if (FUNC3(msg, RDMA_NLDEV_ATTR_RES_SUMMARY_ENTRY_NAME, name))
		goto err;
	if (FUNC4(msg, RDMA_NLDEV_ATTR_RES_SUMMARY_ENTRY_CURR, curr,
			      RDMA_NLDEV_ATTR_PAD))
		goto err;

	FUNC1(msg, entry_attr);
	return 0;

err:
	FUNC0(msg, entry_attr);
	return -EMSGSIZE;
}