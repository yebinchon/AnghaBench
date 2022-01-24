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
typedef  int /*<<< orphan*/  u32 ;
struct qedr_ah {int /*<<< orphan*/  attr; } ;
struct ib_ah {int dummy; } ;

/* Variables and functions */
 struct qedr_ah* FUNC0 (struct ib_ah*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct ib_ah *ibah, u32 flags)
{
	struct qedr_ah *ah = FUNC0(ibah);

	FUNC1(&ah->attr);
}