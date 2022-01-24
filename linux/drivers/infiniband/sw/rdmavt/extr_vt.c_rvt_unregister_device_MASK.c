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
struct rvt_dev_info {int /*<<< orphan*/  ibdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct rvt_dev_info*,char*) ; 

void FUNC6(struct rvt_dev_info *rdi)
{
	FUNC5(rdi, "Driver is unregistering.");
	if (!rdi)
		return;

	FUNC1(rdi);

	FUNC0(&rdi->ibdev);
	FUNC4(rdi);
	FUNC2(rdi);
	FUNC3(rdi);
}