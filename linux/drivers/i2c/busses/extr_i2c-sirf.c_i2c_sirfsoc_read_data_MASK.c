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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct sirfsoc_i2c {int read_cmd_len; int /*<<< orphan*/  finished_len; scalar_t__* buf; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SIRFSOC_I2C_DATA_BUF ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sirfsoc_i2c *siic)
{
	u32 data = 0;
	int i;

	for (i = 0; i < siic->read_cmd_len; i++) {
		if (!(i & 0x3))
			data = FUNC2(siic->base + SIRFSOC_I2C_DATA_BUF + i);
		siic->buf[siic->finished_len++] =
			(u8)((data & FUNC0(i)) >>
				FUNC1(i));
	}
}