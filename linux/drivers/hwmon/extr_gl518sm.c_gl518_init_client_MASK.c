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
typedef  int u8 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL518_REG_CONF ; 
 int /*<<< orphan*/  GL518_REG_MASK ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)
{
	/* Make sure we leave D7:Reset untouched */
	u8 regvalue = FUNC0(client, GL518_REG_CONF) & 0x7f;

	/* Comparator mode (D3=0), standby mode (D6=0) */
	FUNC1(client, GL518_REG_CONF, (regvalue &= 0x37));

	/* Never interrupts */
	FUNC1(client, GL518_REG_MASK, 0x00);

	/* Clear status register (D5=1), start (D6=1) */
	FUNC1(client, GL518_REG_CONF, 0x20 | regvalue);
	FUNC1(client, GL518_REG_CONF, 0x40 | regvalue);
}