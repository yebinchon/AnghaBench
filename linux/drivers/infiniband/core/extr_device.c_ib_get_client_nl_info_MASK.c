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
struct ib_device {int dummy; } ;
struct ib_client_nl_info {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct ib_device*,char const*,struct ib_client_nl_info*) ; 
 int FUNC2 (char const*,struct ib_client_nl_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

int FUNC4(struct ib_device *ibdev, const char *client_name,
			  struct ib_client_nl_info *res)
{
	int ret;

	if (ibdev)
		ret = FUNC1(ibdev, client_name, res);
	else
		ret = FUNC2(client_name, res);
#ifdef CONFIG_MODULES
	if (ret == -ENOENT) {
		request_module("rdma-client-%s", client_name);
		if (ibdev)
			ret = __ib_get_client_nl_info(ibdev, client_name, res);
		else
			ret = __ib_get_global_client_nl_info(client_name, res);
	}
#endif
	if (ret) {
		if (ret == -ENOENT)
			return -EOPNOTSUPP;
		return ret;
	}

	if (FUNC0(!res->cdev))
		return -EINVAL;
	return 0;
}