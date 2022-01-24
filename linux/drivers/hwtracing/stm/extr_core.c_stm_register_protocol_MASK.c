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
struct stm_protocol_driver {scalar_t__ policy_attr; int /*<<< orphan*/  name; } ;
struct stm_pdrv_entry {struct stm_protocol_driver const* pdrv; int /*<<< orphan*/  entry; int /*<<< orphan*/  node_type; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct stm_pdrv_entry*) ; 
 struct stm_pdrv_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm_pdrv_head ; 
 int /*<<< orphan*/  stm_pdrv_mutex ; 

int FUNC7(const struct stm_protocol_driver *pdrv)
{
	struct stm_pdrv_entry *pe = NULL;
	int ret = -ENOMEM;

	FUNC5(&stm_pdrv_mutex);

	if (FUNC0(pdrv->name)) {
		ret = -EEXIST;
		goto unlock;
	}

	pe = FUNC3(sizeof(*pe), GFP_KERNEL);
	if (!pe)
		goto unlock;

	if (pdrv->policy_attr) {
		pe->node_type = FUNC1(pdrv->policy_attr);
		if (!pe->node_type)
			goto unlock;
	}

	FUNC4(&pe->entry, &stm_pdrv_head);
	pe->pdrv = pdrv;

	ret = 0;
unlock:
	FUNC6(&stm_pdrv_mutex);

	if (ret)
		FUNC2(pe);

	return ret;
}