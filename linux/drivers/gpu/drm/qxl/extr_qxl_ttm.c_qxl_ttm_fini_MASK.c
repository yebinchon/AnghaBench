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
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;
struct qxl_device {TYPE_1__ mman; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TTM_PL_PRIV ; 
 int /*<<< orphan*/  TTM_PL_VRAM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct qxl_device *qdev)
{
	FUNC1(&qdev->mman.bdev, TTM_PL_VRAM);
	FUNC1(&qdev->mman.bdev, TTM_PL_PRIV);
	FUNC2(&qdev->mman.bdev);
	FUNC0("qxl: ttm finalized\n");
}