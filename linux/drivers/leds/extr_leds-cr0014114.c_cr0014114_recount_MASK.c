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
typedef  int /*<<< orphan*/  u8 ;
struct cr0014114 {size_t count; int /*<<< orphan*/  dev; int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CR_FW_DELAY_MSEC ; 
 int /*<<< orphan*/  CR_INIT_REENUMERATE ; 
 int /*<<< orphan*/  CR_NEXT_REENUMERATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct cr0014114 *priv)
{
	int	ret;
	size_t	i;
	u8	cmd;

	FUNC0(priv->dev, "LEDs recount is started\n");

	cmd = CR_INIT_REENUMERATE;
	ret = FUNC3(priv->spi, &cmd, sizeof(cmd));
	if (ret)
		goto err;

	cmd = CR_NEXT_REENUMERATE;
	for (i = 0; i < priv->count; i++) {
		FUNC2(CR_FW_DELAY_MSEC);

		ret = FUNC3(priv->spi, &cmd, sizeof(cmd));
		if (ret)
			goto err;
	}

err:
	FUNC0(priv->dev, "LEDs recount is finished\n");

	if (ret)
		FUNC1(priv->dev, "with error %d", ret);

	return ret;
}