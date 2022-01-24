#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_9__ {int /*<<< orphan*/  creq_ring_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  fw_id; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;
struct bnxt_re_dev {int /*<<< orphan*/  flags; TYPE_3__ rcfw; int /*<<< orphan*/  chip_ctx; TYPE_4__ qplib_ctx; TYPE_2__* en_dev; int /*<<< orphan*/  worker; } ;
struct TYPE_8__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_RE_FLAG_GOT_MSIX ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_IBDEV_REGISTERED ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_NETDEV_REGISTERED ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_QOS_WORK_REG ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_RCFW_CHANNEL_EN ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_RESOURCES_ALLOCATED ; 
 int /*<<< orphan*/  BNXT_RE_FLAG_RESOURCES_INITIALIZED ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt_re_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct bnxt_re_dev*) ; 
 int FUNC7 (struct bnxt_re_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnxt_re_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnxt_re_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bnxt_re_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bnxt_re_dev*) ; 
 int FUNC12 (struct bnxt_re_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct bnxt_re_dev*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct bnxt_re_dev *rdev)
{
	u8 type;
	int rc;

	if (FUNC16(BNXT_RE_FLAG_IBDEV_REGISTERED, &rdev->flags)) {
		/* Cleanup ib dev */
		FUNC11(rdev);
	}
	if (FUNC16(BNXT_RE_FLAG_QOS_WORK_REG, &rdev->flags))
		FUNC13(&rdev->worker);

	if (FUNC16(BNXT_RE_FLAG_RESOURCES_INITIALIZED,
			       &rdev->flags))
		FUNC5(rdev);
	if (FUNC16(BNXT_RE_FLAG_RESOURCES_ALLOCATED, &rdev->flags))
		FUNC8(rdev);

	if (FUNC16(BNXT_RE_FLAG_RCFW_CHANNEL_EN, &rdev->flags)) {
		rc = FUNC0(&rdev->rcfw);
		if (rc)
			FUNC14(FUNC15(rdev),
				 "Failed to deinitialize RCFW: %#x", rc);
		FUNC10(rdev, rdev->qplib_ctx.stats.fw_id);
		FUNC2(rdev->en_dev->pdev, &rdev->qplib_ctx);
		FUNC1(&rdev->rcfw);
		type = FUNC4(&rdev->chip_ctx);
		FUNC9(rdev, rdev->rcfw.creq_ring_id, type);
		FUNC3(&rdev->rcfw);
	}
	if (FUNC16(BNXT_RE_FLAG_GOT_MSIX, &rdev->flags)) {
		rc = FUNC7(rdev);
		if (rc)
			FUNC14(FUNC15(rdev),
				 "Failed to free MSI-X vectors: %#x", rc);
	}

	FUNC6(rdev);
	if (FUNC16(BNXT_RE_FLAG_NETDEV_REGISTERED, &rdev->flags)) {
		rc = FUNC12(rdev);
		if (rc)
			FUNC14(FUNC15(rdev),
				 "Failed to unregister with netdev: %#x", rc);
	}
}