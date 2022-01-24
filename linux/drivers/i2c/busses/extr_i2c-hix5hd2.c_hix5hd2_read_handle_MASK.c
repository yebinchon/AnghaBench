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
struct hix5hd2_i2c_priv {int msg_len; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ HIX5I2C_COM ; 
 int I2C_NO_ACK ; 
 int I2C_READ ; 
 int /*<<< orphan*/  FUNC0 (struct hix5hd2_i2c_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct hix5hd2_i2c_priv *priv)
{
	if (priv->msg_len == 1) {
		/* the last byte don't need send ACK */
		FUNC1(I2C_READ | I2C_NO_ACK, priv->regs + HIX5I2C_COM);
	} else if (priv->msg_len > 1) {
		/* if i2c master receive data will send ACK */
		FUNC1(I2C_READ, priv->regs + HIX5I2C_COM);
	} else {
		FUNC0(priv);
	}
}