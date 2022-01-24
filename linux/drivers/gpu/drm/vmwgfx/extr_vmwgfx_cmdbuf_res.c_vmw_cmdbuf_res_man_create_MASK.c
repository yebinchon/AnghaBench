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
struct vmw_private {int dummy; } ;
struct vmw_cmdbuf_res_manager {int /*<<< orphan*/  resources; int /*<<< orphan*/  list; struct vmw_private* dev_priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vmw_cmdbuf_res_manager* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VMW_CMDBUF_RES_MAN_HT_ORDER ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_cmdbuf_res_manager*) ; 
 struct vmw_cmdbuf_res_manager* FUNC4 (int,int /*<<< orphan*/ ) ; 

struct vmw_cmdbuf_res_manager *
FUNC5(struct vmw_private *dev_priv)
{
	struct vmw_cmdbuf_res_manager *man;
	int ret;

	man = FUNC4(sizeof(*man), GFP_KERNEL);
	if (!man)
		return FUNC0(-ENOMEM);

	man->dev_priv = dev_priv;
	FUNC1(&man->list);
	ret = FUNC2(&man->resources, VMW_CMDBUF_RES_MAN_HT_ORDER);
	if (ret == 0)
		return man;

	FUNC3(man);
	return FUNC0(ret);
}