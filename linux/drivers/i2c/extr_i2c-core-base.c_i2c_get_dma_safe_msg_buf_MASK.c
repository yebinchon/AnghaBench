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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_msg {unsigned int len; int flags; int /*<<< orphan*/ * buf; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_M_DMA_SAFE ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 

u8 *FUNC3(struct i2c_msg *msg, unsigned int threshold)
{
	/* also skip 0-length msgs for bogus thresholds of 0 */
	if (!threshold)
		FUNC2("DMA buffer for addr=0x%02x with length 0 is bogus\n",
			 msg->addr);
	if (msg->len < threshold || msg->len == 0)
		return NULL;

	if (msg->flags & I2C_M_DMA_SAFE)
		return msg->buf;

	FUNC2("using bounce buffer for addr=0x%02x, len=%d\n",
		 msg->addr, msg->len);

	if (msg->flags & I2C_M_RD)
		return FUNC1(msg->len, GFP_KERNEL);
	else
		return FUNC0(msg->buf, msg->len, GFP_KERNEL);
}