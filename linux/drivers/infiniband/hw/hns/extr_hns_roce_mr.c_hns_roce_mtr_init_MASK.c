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
struct hns_roce_mtr {int buf_pg_shift; int /*<<< orphan*/  hem_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

void FUNC1(struct hns_roce_mtr *mtr, int bt_pg_shift,
		       int buf_pg_shift)
{
	FUNC0(&mtr->hem_list, bt_pg_shift);
	mtr->buf_pg_shift = buf_pg_shift;
}