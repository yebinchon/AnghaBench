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
typedef  int u16 ;
struct wf_sensor {int /*<<< orphan*/  name; struct wf_ad7417_priv* priv; } ;
struct wf_ad7417_priv {int config; int /*<<< orphan*/  lock; TYPE_1__* i2c; struct wf_sensor* sensors; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int*,int) ; 
 int FUNC4 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wf_ad7417_priv*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct wf_sensor *sr, s32 *value)
{
	struct wf_ad7417_priv *pv = sr->priv;
	int chan = sr - pv->sensors;
	int i, rc;
	u8 buf[2];
	u16 raw;

	*value = 0;
	FUNC6(&pv->lock);
	for (i = 0; i < 10; i++) {
		/* Set channel */
		buf[0] = 1;
		buf[1] = (pv->config & 0x1f) | (chan << 5);
		rc = FUNC4(pv->i2c, buf, 2);
		if (rc < 0)
			goto error;

		/* Wait for conversion */
		FUNC5(1);

		/* Switch to data register */
		buf[0] = 4;
		rc = FUNC4(pv->i2c, buf, 1);
		if (rc < 0)
			goto error;

		/* Read result */
		rc = FUNC3(pv->i2c, buf, 2);
		if (rc < 0)
			goto error;

		/* Read a a 16-bit signed value */
		raw = FUNC0((__le16 *)buf) >> 6;
		FUNC8(pv, chan, raw, value);

		FUNC2(&pv->i2c->dev, "ADC chan %d [%s]"
			 " raw value: 0x%x, conv to: 0x%08x\n",
			 chan, sr->name, raw, *value);

		FUNC7(&pv->lock);
		return 0;

	error:
		FUNC1(&pv->i2c->dev,
			  "Error reading ADC, try %d...\n", i);
		if (i < 9)
			FUNC5(10);
	}
	FUNC7(&pv->lock);
	return -1;
}