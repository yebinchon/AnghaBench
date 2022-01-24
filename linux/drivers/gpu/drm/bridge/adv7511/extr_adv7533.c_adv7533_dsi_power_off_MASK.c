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
struct adv7511 {int /*<<< orphan*/  regmap_cec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

void FUNC1(struct adv7511 *adv)
{
	/* disable hdmi */
	FUNC0(adv->regmap_cec, 0x03, 0x0b);
	/* disable internal timing generator */
	FUNC0(adv->regmap_cec, 0x27, 0x0b);
}