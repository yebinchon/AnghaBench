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
struct rvt_qp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rvt_qp*) ; 
 scalar_t__ FUNC1 (struct rvt_qp*) ; 

bool FUNC2(struct rvt_qp *qp)
{
	if (FUNC1(qp))
		return FUNC0(qp);
	return false;
}