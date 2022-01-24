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
typedef  int u32 ;
struct rcar_i2c_priv {int pos; int flags; struct i2c_msg* msg; } ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICMCR ; 
 int /*<<< orphan*/  ICMSR ; 
 int /*<<< orphan*/  ICRXTX ; 
 int ID_LAST_MSG ; 
 int MDE ; 
 int /*<<< orphan*/  RCAR_BUS_PHASE_STOP ; 
 int /*<<< orphan*/  RCAR_IRQ_ACK_SEND ; 
 scalar_t__ FUNC0 (struct rcar_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_i2c_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rcar_i2c_priv *priv, u32 msr)
{
	struct i2c_msg *msg = priv->msg;

	/* FIXME: sometimes, unknown interrupt happened. Do nothing */
	if (!(msr & MDE))
		return;

	/* Check if DMA can be enabled and take over */
	if (priv->pos == 1 && FUNC0(priv))
		return;

	if (priv->pos < msg->len) {
		/*
		 * Prepare next data to ICRXTX register.
		 * This data will go to _SHIFT_ register.
		 *
		 *    *
		 * [ICRXTX] -> [SHIFT] -> [I2C bus]
		 */
		FUNC2(priv, ICRXTX, msg->buf[priv->pos]);
		priv->pos++;
	} else {
		/*
		 * The last data was pushed to ICRXTX on _PREV_ empty irq.
		 * It is on _SHIFT_ register, and will sent to I2C bus.
		 *
		 *		  *
		 * [ICRXTX] -> [SHIFT] -> [I2C bus]
		 */

		if (priv->flags & ID_LAST_MSG) {
			/*
			 * If current msg is the _LAST_ msg,
			 * prepare stop condition here.
			 * ID_DONE will be set on STOP irq.
			 */
			FUNC2(priv, ICMCR, RCAR_BUS_PHASE_STOP);
		} else {
			FUNC1(priv);
			return;
		}
	}

	FUNC2(priv, ICMSR, RCAR_IRQ_ACK_SEND);
}