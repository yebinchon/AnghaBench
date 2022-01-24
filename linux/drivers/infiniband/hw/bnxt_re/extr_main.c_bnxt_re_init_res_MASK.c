#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct bnxt_re_dev {int num_msix; int /*<<< orphan*/ * nq; TYPE_2__* msix_entries; TYPE_1__* en_dev; int /*<<< orphan*/  qplib_res; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; } ;
struct TYPE_3__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bnxt_re_cqn_handler ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt_re_dev*,int) ; 
 int /*<<< orphan*/  bnxt_re_srqn_handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt_re_dev*) ; 

__attribute__((used)) static int FUNC6(struct bnxt_re_dev *rdev)
{
	int num_vec_enabled = 0;
	int rc = 0, i;
	u32 db_offt;

	FUNC2(&rdev->qplib_res);

	for (i = 1; i < rdev->num_msix ; i++) {
		db_offt = FUNC3(rdev, i);
		rc = FUNC1(rdev->en_dev->pdev, &rdev->nq[i - 1],
					  i - 1, rdev->msix_entries[i].vector,
					  db_offt, &bnxt_re_cqn_handler,
					  &bnxt_re_srqn_handler);
		if (rc) {
			FUNC4(FUNC5(rdev),
				"Failed to enable NQ with rc = 0x%x", rc);
			goto fail;
		}
		num_vec_enabled++;
	}
	return 0;
fail:
	for (i = num_vec_enabled; i >= 0; i--)
		FUNC0(&rdev->nq[i]);
	return rc;
}