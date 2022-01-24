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
struct fw_ohci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_PAGE_SELECT ; 
 int FUNC0 (struct fw_ohci*,int) ; 
 int FUNC1 (struct fw_ohci*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct fw_ohci *ohci, int page, int addr)
{
	int ret;

	ret = FUNC1(ohci, 7, PHY_PAGE_SELECT, page << 5);
	if (ret < 0)
		return ret;

	return FUNC0(ohci, addr);
}