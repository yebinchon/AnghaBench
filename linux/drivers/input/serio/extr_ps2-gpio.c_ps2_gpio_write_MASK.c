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
struct serio {struct ps2_gpio_data* port_data; } ;
struct ps2_gpio_data {int /*<<< orphan*/  tx_mutex; int /*<<< orphan*/  tx_done; } ;

/* Variables and functions */
 int SERIO_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct serio*,unsigned char) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct serio *serio, unsigned char val)
{
	struct ps2_gpio_data *drvdata = serio->port_data;
	int ret = 0;

	if (FUNC1()) {
		FUNC3(&drvdata->tx_mutex);
		FUNC0(serio, val);
		if (!FUNC5(&drvdata->tx_done,
						 FUNC2(10000)))
			ret = SERIO_TIMEOUT;
		FUNC4(&drvdata->tx_mutex);
	} else {
		FUNC0(serio, val);
	}

	return ret;
}