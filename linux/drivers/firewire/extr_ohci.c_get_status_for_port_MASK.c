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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct fw_ohci*,int) ; 
 int FUNC3 (struct fw_ohci*,int,int) ; 

__attribute__((used)) static int FUNC4(struct fw_ohci *ohci, int port_index)
{
	int reg;

	FUNC0(&ohci->phy_reg_mutex);
	reg = FUNC3(ohci, 7, port_index);
	if (reg >= 0)
		reg = FUNC2(ohci, 8);
	FUNC1(&ohci->phy_reg_mutex);
	if (reg < 0)
		return reg;

	switch (reg & 0x0f) {
	case 0x06:
		return 2;	/* is child node (connected to parent node) */
	case 0x0e:
		return 3;	/* is parent node (connected to child node) */
	}
	return 1;		/* not connected */
}