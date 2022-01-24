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
struct net_device {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 struct rxe_dev* FUNC2 (struct net_device*) ; 
 int FUNC3 (char const*,struct net_device*) ; 

__attribute__((used)) static int FUNC4(const char *ibdev_name, struct net_device *ndev)
{
	struct rxe_dev *exists;
	int err = 0;

	exists = FUNC2(ndev);
	if (exists) {
		FUNC0(&exists->ib_dev);
		FUNC1("already configured on %s\n", ndev->name);
		err = -EEXIST;
		goto err;
	}

	err = FUNC3(ibdev_name, ndev);
	if (err) {
		FUNC1("failed to add %s\n", ndev->name);
		goto err;
	}
err:
	return err;
}