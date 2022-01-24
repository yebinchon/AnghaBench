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

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pasid_idr ; 
 int /*<<< orphan*/  pasid_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void *FUNC3(int pasid)
{
	void *p;

	FUNC1(&pasid_lock);
	p = FUNC0(&pasid_idr, pasid);
	FUNC2(&pasid_lock);

	return p;
}