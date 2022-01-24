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
typedef  int /*<<< orphan*/  u8 ;
struct hix5hd2_i2c_priv {scalar_t__ msg_len; scalar_t__ regs; int /*<<< orphan*/  msg_idx; TYPE_1__* msg; } ;
struct TYPE_2__ {int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 scalar_t__ HIX5I2C_COM ; 
 scalar_t__ HIX5I2C_TXR ; 
 int /*<<< orphan*/  I2C_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct hix5hd2_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct hix5hd2_i2c_priv *priv)
{
	u8 data;

	if (priv->msg_len > 0) {
		data = priv->msg->buf[priv->msg_idx++];
		FUNC1(data, priv->regs + HIX5I2C_TXR);
		FUNC1(I2C_WRITE, priv->regs + HIX5I2C_COM);
	} else {
		FUNC0(priv);
	}
}