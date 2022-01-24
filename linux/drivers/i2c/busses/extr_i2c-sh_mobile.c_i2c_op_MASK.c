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
struct sh_mobile_i2c_data {size_t pos; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  send_stop; TYPE_1__* msg; } ;
typedef  enum sh_mobile_i2c_op { ____Placeholder_sh_mobile_i2c_op } sh_mobile_i2c_op ;
struct TYPE_2__ {int* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICCR ; 
 int ICCR_BBSY ; 
 int ICCR_ICE ; 
 int ICCR_RACK ; 
 int ICCR_SCP ; 
 int ICCR_TRS ; 
 int /*<<< orphan*/  ICDR ; 
 int /*<<< orphan*/  ICIC ; 
 int ICIC_ALE ; 
 int ICIC_DTEE ; 
 int ICIC_TACKE ; 
 int ICIC_WAITE ; 
#define  OP_RX 135 
#define  OP_RX_STOP 134 
#define  OP_RX_STOP_DATA 133 
#define  OP_START 132 
#define  OP_TX 131 
#define  OP_TX_FIRST 130 
#define  OP_TX_STOP 129 
#define  OP_TX_TO_RX 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (TYPE_1__*) ; 
 unsigned char FUNC2 (struct sh_mobile_i2c_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mobile_i2c_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned char FUNC6(struct sh_mobile_i2c_data *pd, enum sh_mobile_i2c_op op)
{
	unsigned char ret = 0;
	unsigned long flags;

	FUNC0(pd->dev, "op %d\n", op);

	FUNC4(&pd->lock, flags);

	switch (op) {
	case OP_START: /* issue start and trigger DTE interrupt */
		FUNC3(pd, ICCR, ICCR_ICE | ICCR_TRS | ICCR_BBSY);
		break;
	case OP_TX_FIRST: /* disable DTE interrupt and write client address */
		FUNC3(pd, ICIC, ICIC_WAITE | ICIC_ALE | ICIC_TACKE);
		FUNC3(pd, ICDR, FUNC1(pd->msg));
		break;
	case OP_TX: /* write data */
		FUNC3(pd, ICDR, pd->msg->buf[pd->pos]);
		break;
	case OP_TX_STOP: /* issue a stop (or rep_start) */
		FUNC3(pd, ICCR, pd->send_stop ? ICCR_ICE | ICCR_TRS
					       : ICCR_ICE | ICCR_TRS | ICCR_BBSY);
		break;
	case OP_TX_TO_RX: /* select read mode */
		FUNC3(pd, ICCR, ICCR_ICE | ICCR_SCP);
		break;
	case OP_RX: /* just read data */
		ret = FUNC2(pd, ICDR);
		break;
	case OP_RX_STOP: /* enable DTE interrupt, issue stop */
		FUNC3(pd, ICIC,
		       ICIC_DTEE | ICIC_WAITE | ICIC_ALE | ICIC_TACKE);
		FUNC3(pd, ICCR, ICCR_ICE | ICCR_RACK);
		break;
	case OP_RX_STOP_DATA: /* enable DTE interrupt, read data, issue stop */
		FUNC3(pd, ICIC,
		       ICIC_DTEE | ICIC_WAITE | ICIC_ALE | ICIC_TACKE);
		ret = FUNC2(pd, ICDR);
		FUNC3(pd, ICCR, ICCR_ICE | ICCR_RACK);
		break;
	}

	FUNC5(&pd->lock, flags);

	FUNC0(pd->dev, "op %d, data out 0x%02x\n", op, ret);
	return ret;
}