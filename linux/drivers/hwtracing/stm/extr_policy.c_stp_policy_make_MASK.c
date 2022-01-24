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
struct stm_protocol_driver {int dummy; } ;
struct stm_device {int /*<<< orphan*/  policy_mutex; TYPE_1__* policy; struct config_item_type const* pdrv_node_type; struct stm_protocol_driver const* pdrv; } ;
struct config_item_type {int dummy; } ;
struct config_group {int dummy; } ;
struct TYPE_2__ {struct config_group group; struct stm_device* stm; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct config_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct config_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct stm_device* FUNC8 (char*) ; 
 int FUNC9 (char*,struct stm_protocol_driver const**,struct config_item_type const**) ; 
 int /*<<< orphan*/  FUNC10 (struct stm_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct stm_protocol_driver const*) ; 
 int /*<<< orphan*/  stp_policy_type ; 
 char* FUNC12 (char*,char) ; 

__attribute__((used)) static struct config_group *
FUNC13(struct config_group *group, const char *name)
{
	const struct config_item_type *pdrv_node_type;
	const struct stm_protocol_driver *pdrv;
	char *devname, *proto, *p;
	struct config_group *ret;
	struct stm_device *stm;
	int err;

	devname = FUNC3(GFP_KERNEL, "%s", name);
	if (!devname)
		return FUNC0(-ENOMEM);

	/*
	 * node must look like <device_name>.<policy_name>, where
	 * <device_name> is the name of an existing stm device; may
	 *               contain dots;
	 * <policy_name> is an arbitrary string; may not contain dots
	 * <device_name>:<protocol_name>.<policy_name>
	 */
	p = FUNC12(devname, '.');
	if (!p) {
		FUNC4(devname);
		return FUNC0(-EINVAL);
	}

	*p = '\0';

	/*
	 * look for ":<protocol_name>":
	 *  + no protocol suffix: fall back to whatever is available;
	 *  + unknown protocol: fail the whole thing
	 */
	proto = FUNC12(devname, ':');
	if (proto)
		*proto++ = '\0';

	stm = FUNC8(devname);
	if (!stm) {
		FUNC4(devname);
		return FUNC0(-ENODEV);
	}

	err = FUNC9(proto, &pdrv, &pdrv_node_type);
	FUNC4(devname);

	if (err) {
		FUNC10(stm);
		return FUNC0(-ENODEV);
	}

	FUNC6(&stm->policy_mutex);
	if (stm->policy) {
		ret = FUNC0(-EBUSY);
		goto unlock_policy;
	}

	stm->policy = FUNC5(sizeof(*stm->policy), GFP_KERNEL);
	if (!stm->policy) {
		ret = FUNC0(-ENOMEM);
		goto unlock_policy;
	}

	FUNC2(&stm->policy->group, name,
				    &stp_policy_type);

	stm->pdrv = pdrv;
	stm->pdrv_node_type = pdrv_node_type;
	stm->policy->stm = stm;
	ret = &stm->policy->group;

unlock_policy:
	FUNC7(&stm->policy_mutex);

	if (FUNC1(ret)) {
		/*
		 * pdrv and stm->pdrv at this point can be quite different,
		 * and only one of them needs to be 'put'
		 */
		FUNC11(pdrv);
		FUNC10(stm);
	}

	return ret;
}