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
struct stp_policy {struct stm_device* stm; } ;
struct stm_device {int /*<<< orphan*/  policy_mutex; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stp_policy*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct stp_policy*) ; 
 struct stp_policy* FUNC4 (struct config_item*) ; 

__attribute__((used)) static void FUNC5(struct config_item *item)
{
	struct stp_policy *policy = FUNC4(item);
	struct stm_device *stm = policy->stm;

	/* a policy *can* be unbound and still exist in configfs tree */
	if (!stm)
		return;

	FUNC1(&stm->policy_mutex);
	FUNC3(policy);
	FUNC2(&stm->policy_mutex);

	FUNC0(policy);
}