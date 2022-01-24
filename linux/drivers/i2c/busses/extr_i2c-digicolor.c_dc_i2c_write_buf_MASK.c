#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dc_i2c {int /*<<< orphan*/  msgbuf_ptr; TYPE_1__* msg; } ;
struct TYPE_2__ {int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct dc_i2c *i2c)
{
	FUNC0(i2c, i2c->msg->buf[i2c->msgbuf_ptr++]);
}