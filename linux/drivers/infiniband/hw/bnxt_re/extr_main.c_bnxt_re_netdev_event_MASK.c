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
struct notifier_block {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct bnxt_re_work {unsigned long event; int /*<<< orphan*/  work; struct net_device* vlan_dev; struct bnxt_re_dev* rdev; } ;
struct bnxt_re_dev {int /*<<< orphan*/  sched_count; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  NETDEV_REGISTER 129 
#define  NETDEV_UNREGISTER 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct bnxt_re_dev**,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt_re_dev*) ; 
 struct bnxt_re_dev* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnxt_re_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnxt_re_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnxt_re_dev*) ; 
 int /*<<< orphan*/  bnxt_re_task ; 
 int /*<<< orphan*/  bnxt_re_wq ; 
 struct bnxt_re_work* FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC13 (struct net_device*) ; 

__attribute__((used)) static int FUNC14(struct notifier_block *notifier,
				unsigned long event, void *ptr)
{
	struct net_device *real_dev, *netdev = FUNC10(ptr);
	struct bnxt_re_work *re_work;
	struct bnxt_re_dev *rdev;
	int rc = 0;
	bool sch_work = false;

	real_dev = FUNC13(netdev);
	if (!real_dev)
		real_dev = netdev;

	rdev = FUNC5(real_dev);
	if (!rdev && event != NETDEV_REGISTER)
		goto exit;
	if (real_dev != netdev)
		goto exit;

	switch (event) {
	case NETDEV_REGISTER:
		if (rdev)
			break;
		rc = FUNC3(&rdev, real_dev);
		if (rc == -ENODEV)
			break;
		if (rc) {
			FUNC11("Failed to register with the device %s: %#x\n",
			       real_dev->name, rc);
			break;
		}
		FUNC7(rdev);
		sch_work = true;
		break;

	case NETDEV_UNREGISTER:
		/* netdev notifier will call NETDEV_UNREGISTER again later since
		 * we are still holding the reference to the netdev
		 */
		if (FUNC2(&rdev->sched_count) > 0)
			goto exit;
		FUNC6(rdev);
		FUNC8(rdev);
		FUNC4(rdev);
		break;

	default:
		sch_work = true;
		break;
	}
	if (sch_work) {
		/* Allocate for the deferred task */
		re_work = FUNC9(sizeof(*re_work), GFP_ATOMIC);
		if (re_work) {
			re_work->rdev = rdev;
			re_work->event = event;
			re_work->vlan_dev = (real_dev == netdev ?
					     NULL : netdev);
			FUNC0(&re_work->work, bnxt_re_task);
			FUNC1(&rdev->sched_count);
			FUNC12(bnxt_re_wq, &re_work->work);
		}
	}

exit:
	return NOTIFY_DONE;
}