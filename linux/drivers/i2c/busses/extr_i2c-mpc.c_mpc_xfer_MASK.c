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
typedef  int u8 ;
struct mpc_i2c {scalar_t__ base; int /*<<< orphan*/  dev; } ;
struct i2c_msg {int flags; int len; int /*<<< orphan*/  buf; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int CSR_MAL ; 
 int CSR_MBB ; 
 int CSR_MCF ; 
 int CSR_RXAK ; 
 int EINTR ; 
 int EIO ; 
 scalar_t__ HZ ; 
 int I2C_M_RD ; 
 int I2C_M_RECV_LEN ; 
 scalar_t__ MPC_I2C_SR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct mpc_i2c* FUNC2 (struct i2c_adapter*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct mpc_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct mpc_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct mpc_i2c*) ; 
 int FUNC6 (struct mpc_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC7 (struct mpc_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct mpc_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
	struct i2c_msg *pmsg;
	int i;
	int ret = 0;
	unsigned long orig_jiffies = jiffies;
	struct mpc_i2c *i2c = FUNC2(adap);

	FUNC4(i2c);

	/* Allow bus up to 1s to become not busy */
	while (FUNC8(i2c->base + MPC_I2C_SR) & CSR_MBB) {
		if (FUNC10(current)) {
			FUNC1(i2c->dev, "Interrupted\n");
			FUNC13(i2c, 0);
			return -EINTR;
		}
		if (FUNC11(jiffies, orig_jiffies + HZ)) {
			u8 status = FUNC8(i2c->base + MPC_I2C_SR);

			FUNC1(i2c->dev, "timeout\n");
			if ((status & (CSR_MCF | CSR_MBB | CSR_RXAK)) != 0) {
				FUNC12(status & ~CSR_MAL,
				       i2c->base + MPC_I2C_SR);
				FUNC3(i2c);
			}
			return -EIO;
		}
		FUNC9();
	}

	for (i = 0; ret >= 0 && i < num; i++) {
		pmsg = &msgs[i];
		FUNC1(i2c->dev,
			"Doing %s %d bytes to 0x%02x - %d of %d messages\n",
			pmsg->flags & I2C_M_RD ? "read" : "write",
			pmsg->len, pmsg->addr, i + 1, num);
		if (pmsg->flags & I2C_M_RD) {
			bool recv_len = pmsg->flags & I2C_M_RECV_LEN;

			ret = FUNC6(i2c, pmsg->addr, pmsg->buf, pmsg->len, i,
				       recv_len);
			if (recv_len && ret > 0)
				pmsg->len = ret;
		} else {
			ret =
			    FUNC7(i2c, pmsg->addr, pmsg->buf, pmsg->len, i);
		}
	}
	FUNC5(i2c); /* Initiate STOP */
	orig_jiffies = jiffies;
	/* Wait until STOP is seen, allow up to 1 s */
	while (FUNC8(i2c->base + MPC_I2C_SR) & CSR_MBB) {
		if (FUNC11(jiffies, orig_jiffies + HZ)) {
			u8 status = FUNC8(i2c->base + MPC_I2C_SR);

			FUNC1(i2c->dev, "timeout\n");
			if ((status & (CSR_MCF | CSR_MBB | CSR_RXAK)) != 0) {
				FUNC12(status & ~CSR_MAL,
				       i2c->base + MPC_I2C_SR);
				FUNC3(i2c);
			}
			return -EIO;
		}
		FUNC0();
	}
	return (ret < 0) ? ret : num;
}