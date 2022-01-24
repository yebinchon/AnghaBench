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
struct cr0014114 {int do_recount; size_t count; scalar_t__ delay; int /*<<< orphan*/ * buf; int /*<<< orphan*/  spi; TYPE_1__* leds; } ;
struct TYPE_2__ {int /*<<< orphan*/  brightness; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_FW_DELAY_MSEC ; 
 int /*<<< orphan*/  CR_SET_BRIGHTNESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct cr0014114*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct cr0014114 *priv)
{
	int		ret;
	size_t		i;
	unsigned long	udelay, now = jiffies;

	/* to avoid SPI mistiming with firmware we should wait some time */
	if (FUNC6(priv->delay, now)) {
		udelay = FUNC2(priv->delay - now);
		FUNC8(udelay, udelay + 1);
	}

	if (FUNC7(priv->do_recount)) {
		ret = FUNC1(priv);
		if (ret)
			goto err;

		priv->do_recount = false;
		FUNC4(CR_FW_DELAY_MSEC);
	}

	priv->buf[0] = CR_SET_BRIGHTNESS;
	for (i = 0; i < priv->count; i++)
		priv->buf[i + 1] = priv->leds[i].brightness;
	FUNC0(priv->buf, priv->count + 2);
	ret = FUNC5(priv->spi, priv->buf, priv->count + 2);

err:
	priv->delay = jiffies + FUNC3(CR_FW_DELAY_MSEC);

	return ret;
}