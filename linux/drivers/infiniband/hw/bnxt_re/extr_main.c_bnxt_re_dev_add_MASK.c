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
struct net_device {int dummy; } ;
struct bnxt_re_dev {int* cosq; int /*<<< orphan*/  list; int /*<<< orphan*/  mw_count; int /*<<< orphan*/  mr_count; int /*<<< orphan*/  srq_count; int /*<<< orphan*/  cq_count; int /*<<< orphan*/  qp_count; int /*<<< orphan*/  qp_lock; int /*<<< orphan*/  qp_list; struct bnxt_en_dev* en_dev; int /*<<< orphan*/  id; struct net_device* netdev; } ;
struct bnxt_en_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ROCE_DRV_MODULE_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnxt_re_dev ; 
 int /*<<< orphan*/  bnxt_re_dev_list ; 
 int /*<<< orphan*/  bnxt_re_dev_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct bnxt_re_dev* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibdev ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bnxt_re_dev *FUNC9(struct net_device *netdev,
					   struct bnxt_en_dev *en_dev)
{
	struct bnxt_re_dev *rdev;

	/* Allocate bnxt_re_dev instance here */
	rdev = FUNC4(bnxt_re_dev, ibdev);
	if (!rdev) {
		FUNC2(NULL, "%s: bnxt_re_dev allocation failure!",
			ROCE_DRV_MODULE_NAME);
		return NULL;
	}
	/* Default values */
	rdev->netdev = netdev;
	FUNC3(rdev->netdev);
	rdev->en_dev = en_dev;
	rdev->id = rdev->en_dev->pdev->devfn;
	FUNC0(&rdev->qp_list);
	FUNC6(&rdev->qp_lock);
	FUNC1(&rdev->qp_count, 0);
	FUNC1(&rdev->cq_count, 0);
	FUNC1(&rdev->srq_count, 0);
	FUNC1(&rdev->mr_count, 0);
	FUNC1(&rdev->mw_count, 0);
	rdev->cosq[0] = 0xFFFF;
	rdev->cosq[1] = 0xFFFF;

	FUNC7(&bnxt_re_dev_lock);
	FUNC5(&rdev->list, &bnxt_re_dev_list);
	FUNC8(&bnxt_re_dev_lock);
	return rdev;
}