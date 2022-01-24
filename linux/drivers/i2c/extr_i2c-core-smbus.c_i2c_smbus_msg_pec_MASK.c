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
struct i2c_msg {int len; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u8 FUNC2(u8 pec, struct i2c_msg *msg)
{
	/* The address will be sent first */
	u8 addr = FUNC0(msg);
	pec = FUNC1(pec, &addr, 1);

	/* The data buffer follows */
	return FUNC1(pec, msg->buf, msg->len);
}