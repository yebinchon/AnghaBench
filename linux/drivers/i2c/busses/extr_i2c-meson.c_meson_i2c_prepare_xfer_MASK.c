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
struct meson_i2c {int count; scalar_t__ pos; scalar_t__ regs; int /*<<< orphan*/ * tokens; TYPE_1__* msg; scalar_t__ last; } ;
struct TYPE_2__ {int flags; scalar_t__ len; scalar_t__ buf; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 scalar_t__ REG_TOK_LIST0 ; 
 scalar_t__ REG_TOK_LIST1 ; 
 int /*<<< orphan*/  TOKEN_DATA ; 
 int /*<<< orphan*/  TOKEN_DATA_LAST ; 
 int /*<<< orphan*/  TOKEN_STOP ; 
 int /*<<< orphan*/  FUNC0 (struct meson_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct meson_i2c*,scalar_t__,int) ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct meson_i2c *i2c)
{
	bool write = !(i2c->msg->flags & I2C_M_RD);
	int i;

	i2c->count = FUNC2(i2c->msg->len - i2c->pos, 8);

	for (i = 0; i < i2c->count - 1; i++)
		FUNC0(i2c, TOKEN_DATA);

	if (i2c->count) {
		if (write || i2c->pos + i2c->count < i2c->msg->len)
			FUNC0(i2c, TOKEN_DATA);
		else
			FUNC0(i2c, TOKEN_DATA_LAST);
	}

	if (write)
		FUNC1(i2c, i2c->msg->buf + i2c->pos, i2c->count);

	if (i2c->last && i2c->pos + i2c->count >= i2c->msg->len)
		FUNC0(i2c, TOKEN_STOP);

	FUNC3(i2c->tokens[0], i2c->regs + REG_TOK_LIST0);
	FUNC3(i2c->tokens[1], i2c->regs + REG_TOK_LIST1);
}