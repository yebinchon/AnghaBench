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
struct c4iw_rdev {int /*<<< orphan*/  resource; int /*<<< orphan*/  free_workq; int /*<<< orphan*/  rqt_compl; int /*<<< orphan*/  pbl_compl; scalar_t__ status_page; int /*<<< orphan*/  uctx; int /*<<< orphan*/  wr_log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct c4iw_rdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct c4iw_rdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct c4iw_rdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct c4iw_rdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct c4iw_rdev *rdev)
{
	FUNC7(rdev->wr_log);
	FUNC3(rdev, &rdev->uctx);
	FUNC6((unsigned long)rdev->status_page);
	FUNC2(rdev);
	FUNC4(rdev);
	FUNC8(&rdev->pbl_compl);
	FUNC8(&rdev->rqt_compl);
	FUNC1(rdev);
	FUNC5(rdev->free_workq);
	FUNC0(&rdev->resource);
}