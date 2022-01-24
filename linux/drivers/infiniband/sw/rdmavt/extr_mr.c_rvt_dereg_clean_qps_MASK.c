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
typedef  int /*<<< orphan*/  u64 ;
struct rvt_mregion {TYPE_1__* pd; } ;
struct rvt_dev_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 struct rvt_dev_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rvt_dereg_clean_qp_cb ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_dev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rvt_mregion *mr)
{
	struct rvt_dev_info *rdi = FUNC0(mr->pd->device);

	FUNC1(rdi, (u64)mr, rvt_dereg_clean_qp_cb);
}