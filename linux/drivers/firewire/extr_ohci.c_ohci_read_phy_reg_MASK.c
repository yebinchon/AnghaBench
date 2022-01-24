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
struct fw_ohci {int /*<<< orphan*/  phy_reg_mutex; } ;
struct fw_card {int dummy; } ;

/* Variables and functions */
 struct fw_ohci* FUNC0 (struct fw_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct fw_ohci*,int) ; 

__attribute__((used)) static int FUNC4(struct fw_card *card, int addr)
{
	struct fw_ohci *ohci = FUNC0(card);
	int ret;

	FUNC1(&ohci->phy_reg_mutex);
	ret = FUNC3(ohci, addr);
	FUNC2(&ohci->phy_reg_mutex);

	return ret;
}