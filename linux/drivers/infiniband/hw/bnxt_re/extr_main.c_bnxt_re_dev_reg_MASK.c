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
struct net_device {int dummy; } ;
struct bnxt_re_dev {int dummy; } ;
struct bnxt_en_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct bnxt_en_dev* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bnxt_en_dev*) ; 
 int FUNC2 (struct bnxt_en_dev*) ; 
 int /*<<< orphan*/  ROCE_DRV_MODULE_NAME ; 
 struct bnxt_re_dev* FUNC3 (struct net_device*,struct bnxt_en_dev*) ; 
 struct bnxt_en_dev* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct bnxt_en_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct bnxt_re_dev **rdev, struct net_device *netdev)
{
	struct bnxt_en_dev *en_dev;
	int rc = 0;

	if (!FUNC6(netdev))
		return -ENODEV;

	en_dev = FUNC4(netdev);
	if (FUNC1(en_dev)) {
		if (en_dev != FUNC0(-ENODEV))
			FUNC7("%s: Failed to probe\n", ROCE_DRV_MODULE_NAME);
		rc = FUNC2(en_dev);
		goto exit;
	}
	*rdev = FUNC3(netdev, en_dev);
	if (!*rdev) {
		rc = -ENOMEM;
		FUNC5(netdev, en_dev);
		goto exit;
	}
exit:
	return rc;
}