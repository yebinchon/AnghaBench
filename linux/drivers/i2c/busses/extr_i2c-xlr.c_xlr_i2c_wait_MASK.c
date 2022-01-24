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
struct xlr_i2c_private {int /*<<< orphan*/  iobase; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int XLR_I2C_ACK_ERR ; 
 int /*<<< orphan*/  XLR_I2C_STATUS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xlr_i2c_private*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct xlr_i2c_private *priv, unsigned long timeout)
{
	int status;
	int t;

	t = FUNC1(priv->wait, FUNC2(priv),
				FUNC0(timeout));
	if (!t)
		return -ETIMEDOUT;

	status = FUNC3(priv->iobase, XLR_I2C_STATUS);

	return status & XLR_I2C_ACK_ERR ? -EIO : 0;
}