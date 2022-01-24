#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct geni_i2c_dev {TYPE_2__ se; TYPE_1__* cur; scalar_t__ err; } ;
struct TYPE_6__ {int /*<<< orphan*/  msg; scalar_t__ err; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int GENI_ABORT_DONE ; 
 int NACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct geni_i2c_dev*) ; 
 TYPE_3__* gi2c_log ; 

__attribute__((used)) static void FUNC3(struct geni_i2c_dev *gi2c, int err)
{
	if (!gi2c->err)
		gi2c->err = gi2c_log[err].err;
	if (gi2c->cur)
		FUNC0(gi2c->se.dev, "len:%d, slv-addr:0x%x, RD/WR:%d\n",
			gi2c->cur->len, gi2c->cur->addr, gi2c->cur->flags);

	if (err != NACK && err != GENI_ABORT_DONE) {
		FUNC1(gi2c->se.dev, "%s\n", gi2c_log[err].msg);
		FUNC2(gi2c);
	}
}