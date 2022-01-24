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
struct mem_ctl_info {int dummy; } ;
struct e752x_error_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_ctl_info*,struct e752x_error_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,struct e752x_error_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static void FUNC3(struct mem_ctl_info *mci)
{
	struct e752x_error_info info;

	FUNC2(3, "\n");
	FUNC0(mci, &info);
	FUNC1(mci, &info, 1);
}