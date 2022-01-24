#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_3__ {int /*<<< orphan*/  timeout; } ;
struct riic_dev {int err; int is_last; TYPE_1__ adapter; int /*<<< orphan*/  msg_done; scalar_t__ base; struct i2c_msg* msg; int /*<<< orphan*/  buf; int /*<<< orphan*/  bytes_left; } ;
struct i2c_msg {int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct i2c_adapter {TYPE_2__ dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 int ICCR2_BBSY ; 
 int ICCR2_RS ; 
 int ICCR2_ST ; 
 int ICIER_NAKIE ; 
 int ICIER_TIE ; 
 scalar_t__ RIIC_ICCR2 ; 
 scalar_t__ RIIC_ICIER ; 
 scalar_t__ RIIC_ICSR2 ; 
 int /*<<< orphan*/  RIIC_INIT_MSG ; 
 struct riic_dev* FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
{
	struct riic_dev *riic = FUNC0(adap);
	unsigned long time_left;
	int i;
	u8 start_bit;

	FUNC1(adap->dev.parent);

	if (FUNC3(riic->base + RIIC_ICCR2) & ICCR2_BBSY) {
		riic->err = -EBUSY;
		goto out;
	}

	FUNC4(&riic->msg_done);
	riic->err = 0;

	FUNC6(0, riic->base + RIIC_ICSR2);

	for (i = 0, start_bit = ICCR2_ST; i < num; i++) {
		riic->bytes_left = RIIC_INIT_MSG;
		riic->buf = msgs[i].buf;
		riic->msg = &msgs[i];
		riic->is_last = (i == num - 1);

		FUNC6(ICIER_NAKIE | ICIER_TIE, riic->base + RIIC_ICIER);

		FUNC6(start_bit, riic->base + RIIC_ICCR2);

		time_left = FUNC5(&riic->msg_done, riic->adapter.timeout);
		if (time_left == 0)
			riic->err = -ETIMEDOUT;

		if (riic->err)
			break;

		start_bit = ICCR2_RS;
	}

 out:
	FUNC2(adap->dev.parent);

	return riic->err ?: num;
}