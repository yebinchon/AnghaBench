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
struct mddev {struct linear_conf* private; int /*<<< orphan*/  raid_disks; } ;
struct linear_conf {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct linear_conf*) ; 
 struct linear_conf* FUNC1 (struct mddev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mddev*) ; 
 int FUNC4 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (struct mddev *mddev)
{
	struct linear_conf *conf;
	int ret;

	if (FUNC3(mddev))
		return -EINVAL;
	conf = FUNC1(mddev, mddev->raid_disks);

	if (!conf)
		return 1;
	mddev->private = conf;
	FUNC5(mddev, FUNC2(mddev, 0, 0));

	ret =  FUNC4(mddev);
	if (ret) {
		FUNC0(conf);
		mddev->private = NULL;
	}
	return ret;
}