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

__attribute__((used)) static int FUNC4(struct fw_ohci *ohci)
{
	int reg;
	int ret = 0;

	FUNC0(&ohci->phy_reg_mutex);
	reg = FUNC3(ohci, 7, 0xe0); /* Select page 7 */
	if (reg >= 0) {
		reg = FUNC2(ohci, 8);
		reg |= 0x40;
		reg = FUNC3(ohci, 8, reg); /* set PMODE bit */
		if (reg >= 0) {
			reg = FUNC2(ohci, 12); /* read register 12 */
			if (reg >= 0) {
				if ((reg & 0x08) == 0x08) {
					/* bit 3 indicates "initiated reset" */
					ret = 0x2;
				}
			}
		}
	}
	FUNC1(&ohci->phy_reg_mutex);
	return ret;
}