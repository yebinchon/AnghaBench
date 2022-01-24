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
struct tlc591xx_priv {TYPE_1__* leds; } ;
struct TYPE_2__ {int /*<<< orphan*/  ldev; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct tlc591xx_priv *priv, unsigned int j)
{
	int i = j;

	while (--i >= 0) {
		if (priv->leds[i].active)
			FUNC0(&priv->leds[i].ldev);
	}
}