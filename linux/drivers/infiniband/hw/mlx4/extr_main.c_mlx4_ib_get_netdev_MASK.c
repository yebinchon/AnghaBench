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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_PROT_ETH ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct net_device* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct mlx4_ib_dev* FUNC8 (struct ib_device*) ; 

__attribute__((used)) static struct net_device *FUNC9(struct ib_device *device, u8 port_num)
{
	struct mlx4_ib_dev *ibdev = FUNC8(device);
	struct net_device *dev;

	FUNC6();
	dev = FUNC2(ibdev->dev, MLX4_PROT_ETH, port_num);

	if (dev) {
		if (FUNC3(ibdev->dev)) {
			struct net_device *upper = NULL;

			upper = FUNC4(dev);
			if (upper) {
				struct net_device *active;

				active = FUNC0(FUNC5(upper));
				if (active)
					dev = active;
			}
		}
	}
	if (dev)
		FUNC1(dev);

	FUNC7();
	return dev;
}