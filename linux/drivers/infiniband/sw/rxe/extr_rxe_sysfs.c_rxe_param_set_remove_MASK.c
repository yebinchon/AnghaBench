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
struct kernel_param {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  intf ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RDMA_DRIVER_RXE ; 
 struct ib_device* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char const*,char*,int) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(const char *val, const struct kernel_param *kp)
{
	int len;
	char intf[32];
	struct ib_device *ib_dev;

	len = FUNC5(val, intf, sizeof(intf));
	if (!len) {
		FUNC3("add: invalid interface name\n");
		return -EINVAL;
	}

	if (FUNC6("all", intf, len) == 0) {
		FUNC4("rxe_sys: remove all");
		FUNC2(RDMA_DRIVER_RXE);
		return 0;
	}

	ib_dev = FUNC0(intf, RDMA_DRIVER_RXE);
	if (!ib_dev) {
		FUNC3("not configured on %s\n", intf);
		return -EINVAL;
	}

	FUNC1(ib_dev);

	return 0;
}