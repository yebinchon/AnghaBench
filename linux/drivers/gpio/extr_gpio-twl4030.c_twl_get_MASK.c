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
struct gpio_twl4030_priv {int usage_count; int direction; int out_state; int /*<<< orphan*/  mutex; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int EPERM ; 
 struct gpio_twl4030_priv* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned offset)
{
	struct gpio_twl4030_priv *priv = FUNC1(chip);
	int ret;
	int status = 0;

	FUNC2(&priv->mutex);
	if (!(priv->usage_count & FUNC0(offset))) {
		ret = -EPERM;
		goto out;
	}

	if (priv->direction & FUNC0(offset))
		status = priv->out_state & FUNC0(offset);
	else
		status = FUNC4(offset);

	ret = (status < 0) ? status : !!status;
out:
	FUNC3(&priv->mutex);
	return ret;
}