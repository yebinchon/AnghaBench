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
struct rxe_dev {int /*<<< orphan*/  ib_dev; } ;
struct net_device {int dummy; } ;
struct kernel_param {int dummy; } ;
typedef  int /*<<< orphan*/  intf ;

/* Variables and functions */
 int EINVAL ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct rxe_dev* FUNC4 (struct net_device*) ; 
 int FUNC5 (char*,struct net_device*) ; 
 int FUNC6 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC7(const char *val, const struct kernel_param *kp)
{
	int len;
	int err = 0;
	char intf[32];
	struct net_device *ndev;
	struct rxe_dev *exists;

	len = FUNC6(val, intf, sizeof(intf));
	if (!len) {
		FUNC3("add: invalid interface name\n");
		return -EINVAL;
	}

	ndev = FUNC0(&init_net, intf);
	if (!ndev) {
		FUNC3("interface %s not found\n", intf);
		return -EINVAL;
	}

	exists = FUNC4(ndev);
	if (exists) {
		FUNC2(&exists->ib_dev);
		FUNC3("already configured on %s\n", intf);
		err = -EINVAL;
		goto err;
	}

	err = FUNC5("rxe%d", ndev);
	if (err) {
		FUNC3("failed to add %s\n", intf);
		goto err;
	}

err:
	FUNC1(ndev);
	return err;
}