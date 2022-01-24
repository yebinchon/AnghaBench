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
typedef  scalar_t__ uint8_t ;
struct fsi_gpio_msg {int bits; int msg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_gpio_msg*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(struct fsi_gpio_msg *msg)
{
	uint8_t crc;
	int top;

	top = msg->bits & 0x3;

	/* start bit, and any non-aligned top bits */
	crc = FUNC0(0, 1 << top | msg->msg >> (msg->bits - top), top + 1);

	/* aligned bits */
	crc = FUNC0(crc, msg->msg, msg->bits - top);

	FUNC1(msg, crc, 4);
}