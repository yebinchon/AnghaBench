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
struct i2c_msg {int addr; } ;
struct axxia_i2c_dev {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MST_ADDR_1 ; 
 scalar_t__ MST_ADDR_2 ; 
 int FUNC0 (struct i2c_msg*) ; 
 scalar_t__ FUNC1 (struct i2c_msg*) ; 
 scalar_t__ FUNC2 (struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct axxia_i2c_dev *idev, struct i2c_msg *msg)
{
	u32 addr_1, addr_2;

	if (FUNC2(msg)) {
		/* 10-bit address
		 *   addr_1: 5'b11110 | addr[9:8] | (R/nW)
		 *   addr_2: addr[7:0]
		 */
		addr_1 = 0xF0 | ((msg->addr >> 7) & 0x06);
		if (FUNC1(msg))
			addr_1 |= 1;	/* Set the R/nW bit of the address */
		addr_2 = msg->addr & 0xFF;
	} else {
		/* 7-bit address
		 *   addr_1: addr[6:0] | (R/nW)
		 *   addr_2: dont care
		 */
		addr_1 = FUNC0(msg);
		addr_2 = 0;
	}

	FUNC3(addr_1, idev->base + MST_ADDR_1);
	FUNC3(addr_2, idev->base + MST_ADDR_2);
}