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
struct st_i2c_client {int count; int /*<<< orphan*/  xfered; } ;
struct st_i2c_dev {scalar_t__ base; struct st_i2c_client client; } ;

/* Variables and functions */
 scalar_t__ SSC_I2C ; 
 int /*<<< orphan*/  SSC_I2C_ACKG ; 
 int /*<<< orphan*/  SSC_I2C_TXENB ; 
 scalar_t__ SSC_IEN ; 
 int SSC_IEN_ARBLEN ; 
 int SSC_IEN_NACKEN ; 
 scalar_t__ SSC_RBUF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct st_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct st_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct st_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct st_i2c_dev *i2c_dev)
{
	struct st_i2c_client *c = &i2c_dev->client;
	u32 ien;

	/* Trash the address read back */
	if (!c->xfered) {
		FUNC0(i2c_dev->base + SSC_RBUF);
		FUNC1(i2c_dev->base + SSC_I2C, SSC_I2C_TXENB);
	} else {
		FUNC3(i2c_dev);
	}

	if (!c->count) {
		/* End of xfer, send stop or repstart */
		FUNC4(i2c_dev);
	} else if (c->count == 1) {
		/* Penultimate byte to xfer, disable ACK gen. */
		FUNC1(i2c_dev->base + SSC_I2C, SSC_I2C_ACKG);

		/* Last received byte is to be handled by NACK interrupt */
		ien = SSC_IEN_NACKEN | SSC_IEN_ARBLEN;
		FUNC5(ien, i2c_dev->base + SSC_IEN);

		FUNC2(i2c_dev, c->count);
	} else {
		FUNC2(i2c_dev, c->count - 1);
	}
}