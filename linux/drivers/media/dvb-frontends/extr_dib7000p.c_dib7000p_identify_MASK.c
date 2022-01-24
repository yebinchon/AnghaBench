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
typedef  int u16 ;
struct dib7000p_state {int /*<<< orphan*/  i2c_addr; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int FUNC0 (struct dib7000p_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 

__attribute__((used)) static int FUNC2(struct dib7000p_state *st)
{
	u16 value;
	FUNC1("checking demod on I2C address: %d (%x)\n", st->i2c_addr, st->i2c_addr);

	if ((value = FUNC0(st, 768)) != 0x01b3) {
		FUNC1("wrong Vendor ID (read=0x%x)\n", value);
		return -EREMOTEIO;
	}

	if ((value = FUNC0(st, 769)) != 0x4000) {
		FUNC1("wrong Device ID (%x)\n", value);
		return -EREMOTEIO;
	}

	return 0;
}