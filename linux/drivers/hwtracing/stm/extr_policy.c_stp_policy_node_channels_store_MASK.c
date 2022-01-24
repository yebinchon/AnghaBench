#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stp_policy_node {unsigned int first_channel; unsigned int last_channel; TYPE_1__* policy; } ;
struct stm_device {TYPE_2__* data; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  su_mutex; } ;
struct TYPE_5__ {unsigned int sw_nchannels; } ;
struct TYPE_4__ {struct stm_device* stm; } ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ENODEV ; 
 size_t ERANGE ; 
 unsigned int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char*,unsigned int*,unsigned int*) ; 
 TYPE_3__ stp_policy_subsys ; 
 struct stp_policy_node* FUNC3 (struct config_item*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct config_item *item, const char *page,
			       size_t count)
{
	struct stp_policy_node *policy_node = FUNC3(item);
	unsigned int first, last;
	struct stm_device *stm;
	char *p = (char *)page;
	ssize_t ret = -ENODEV;

	if (FUNC2(p, "%u %u", &first, &last) != 2)
		return -EINVAL;

	FUNC0(&stp_policy_subsys.su_mutex);
	stm = policy_node->policy->stm;
	if (!stm)
		goto unlock;

	if (first > INT_MAX || last > INT_MAX || first > last ||
	    last >= stm->data->sw_nchannels) {
		ret = -ERANGE;
		goto unlock;
	}

	ret = count;
	policy_node->first_channel = first;
	policy_node->last_channel = last;

unlock:
	FUNC1(&stp_policy_subsys.su_mutex);

	return ret;
}