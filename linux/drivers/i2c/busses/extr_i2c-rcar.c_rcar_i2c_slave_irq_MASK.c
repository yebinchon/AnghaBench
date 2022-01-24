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
typedef  int u32 ;
struct rcar_i2c_priv {int /*<<< orphan*/  slave; } ;

/* Variables and functions */
 int FNA ; 
 int /*<<< orphan*/  I2C_SLAVE_READ_PROCESSED ; 
 int /*<<< orphan*/  I2C_SLAVE_READ_REQUESTED ; 
 int /*<<< orphan*/  I2C_SLAVE_STOP ; 
 int /*<<< orphan*/  I2C_SLAVE_WRITE_RECEIVED ; 
 int /*<<< orphan*/  I2C_SLAVE_WRITE_REQUESTED ; 
 int /*<<< orphan*/  ICRXTX ; 
 int /*<<< orphan*/  ICSCR ; 
 int /*<<< orphan*/  ICSIER ; 
 int /*<<< orphan*/  ICSSR ; 
 int SAR ; 
 int SDBS ; 
 int SDE ; 
 int SDR ; 
 int SIE ; 
 int SSR ; 
 int STM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct rcar_i2c_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rcar_i2c_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC3(struct rcar_i2c_priv *priv)
{
	u32 ssr_raw, ssr_filtered;
	u8 value;

	ssr_raw = FUNC1(priv, ICSSR) & 0xff;
	ssr_filtered = ssr_raw & FUNC1(priv, ICSIER);

	if (!ssr_filtered)
		return false;

	/* address detected */
	if (ssr_filtered & SAR) {
		/* read or write request */
		if (ssr_raw & STM) {
			FUNC0(priv->slave, I2C_SLAVE_READ_REQUESTED, &value);
			FUNC2(priv, ICRXTX, value);
			FUNC2(priv, ICSIER, SDE | SSR | SAR);
		} else {
			FUNC0(priv->slave, I2C_SLAVE_WRITE_REQUESTED, &value);
			FUNC1(priv, ICRXTX);	/* dummy read */
			FUNC2(priv, ICSIER, SDR | SSR | SAR);
		}

		FUNC2(priv, ICSSR, ~SAR & 0xff);
	}

	/* master sent stop */
	if (ssr_filtered & SSR) {
		FUNC0(priv->slave, I2C_SLAVE_STOP, &value);
		FUNC2(priv, ICSIER, SAR | SSR);
		FUNC2(priv, ICSSR, ~SSR & 0xff);
	}

	/* master wants to write to us */
	if (ssr_filtered & SDR) {
		int ret;

		value = FUNC1(priv, ICRXTX);
		ret = FUNC0(priv->slave, I2C_SLAVE_WRITE_RECEIVED, &value);
		/* Send NACK in case of error */
		FUNC2(priv, ICSCR, SIE | SDBS | (ret < 0 ? FNA : 0));
		FUNC2(priv, ICSSR, ~SDR & 0xff);
	}

	/* master wants to read from us */
	if (ssr_filtered & SDE) {
		FUNC0(priv->slave, I2C_SLAVE_READ_PROCESSED, &value);
		FUNC2(priv, ICRXTX, value);
		FUNC2(priv, ICSSR, ~SDE & 0xff);
	}

	return true;
}