#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct wf_ad7417_priv {int config; TYPE_1__* i2c; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (TYPE_1__*,int*,int) ; 
 int FUNC3 (TYPE_1__*,int*,int) ; 

__attribute__((used)) static void FUNC4(struct wf_ad7417_priv *pv)
{
	int rc;
	u8 buf[2];
	u8 config = 0;

	/*
	 * Read ADC the configuration register and cache it. We
	 * also make sure Config2 contains proper values, I've seen
	 * cases where we got stale grabage in there, thus preventing
	 * proper reading of conv. values
	 */

	/* Clear Config2 */
	buf[0] = 5;
	buf[1] = 0;
	FUNC3(pv->i2c, buf, 2);

	/* Read & cache Config1 */
	buf[0] = 1;
	rc = FUNC3(pv->i2c, buf, 1);
	if (rc > 0) {
		rc = FUNC2(pv->i2c, buf, 1);
		if (rc > 0) {
			config = buf[0];

			FUNC0(&pv->i2c->dev, "ADC config reg: %02x\n",
				config);

			/* Disable shutdown mode */
			config &= 0xfe;
			buf[0] = 1;
			buf[1] = config;
			rc = FUNC3(pv->i2c, buf, 2);
		}
	}
	if (rc <= 0)
		FUNC1(&pv->i2c->dev, "Error reading ADC config\n");

	pv->config = config;
}