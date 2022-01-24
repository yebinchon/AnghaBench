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
struct TYPE_2__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  mask; int /*<<< orphan*/  base_color; } ;
struct mlxcpld_led_priv {TYPE_1__ param; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int /*<<< orphan*/  MLXCPLD_LED_IS_OFF ; 
 struct mlxcpld_led_priv* FUNC0 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct led_classdev *led,
				       enum led_brightness value)
{
	struct mlxcpld_led_priv *pled = FUNC0(led);

	if (value) {
		FUNC1(pled->param.mask, pled->param.offset,
				     pled->param.base_color);
		return;
	}

	FUNC1(pled->param.mask, pled->param.offset,
			     MLXCPLD_LED_IS_OFF);
}