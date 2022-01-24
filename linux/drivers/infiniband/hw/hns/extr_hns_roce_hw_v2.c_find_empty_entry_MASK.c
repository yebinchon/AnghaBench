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
struct hns_roce_idx_que {int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hns_roce_idx_que *idx_que,
			    unsigned long size)
{
	int wqe_idx;

	if (FUNC3(FUNC0(idx_que->bitmap, size)))
		return -ENOSPC;

	wqe_idx = FUNC2(idx_que->bitmap, size);

	FUNC1(idx_que->bitmap, wqe_idx, 1);

	return wqe_idx;
}