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
struct qxl_bo {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct qxl_bo*) ; 
 int FUNC1 (struct qxl_bo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qxl_bo*) ; 

int FUNC3(struct qxl_bo *bo)
{
	int r;

	r = FUNC1(bo, false);
	if (r)
		return r;

	r = FUNC0(bo);
	FUNC2(bo);
	return r;
}