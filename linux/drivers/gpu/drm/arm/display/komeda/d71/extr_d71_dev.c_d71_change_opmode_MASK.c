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
typedef  int u32 ;
struct komeda_dev {struct d71_dev* chip_data; } ;
struct d71_dev {int /*<<< orphan*/  gcu_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_CONTROL ; 
 int FUNC0 (int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct komeda_dev *mdev, int new_mode)
{
	struct d71_dev *d71 = mdev->chip_data;
	u32 opmode = FUNC3(new_mode);
	int ret;

	FUNC2(d71->gcu_addr, BLK_CONTROL, 0x7, opmode);

	ret = FUNC0(((FUNC1(d71->gcu_addr, BLK_CONTROL) & 0x7) == opmode),
			   100, 1000, 10000);

	return ret;
}