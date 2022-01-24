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
struct bd2802_led {int /*<<< orphan*/  client; int /*<<< orphan*/  rgb_current; int /*<<< orphan*/  adf_on; } ;
typedef  enum led_ids { ____Placeholder_led_ids } led_ids ;
typedef  enum led_colors { ____Placeholder_led_colors } led_colors ;

/* Variables and functions */
 int /*<<< orphan*/  BD2802_CURRENT_000 ; 
 int /*<<< orphan*/  BD2802_ON ; 
 int /*<<< orphan*/  BD2802_PATTERN_FULL ; 
 int /*<<< orphan*/  BD2802_REG_CURRENT1SETUP ; 
 int /*<<< orphan*/  BD2802_REG_CURRENT2SETUP ; 
 int /*<<< orphan*/  BD2802_REG_WAVEPATTERN ; 
 int /*<<< orphan*/  FUNC0 (struct bd2802_led*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bd2802_led*) ; 
 int /*<<< orphan*/  FUNC3 (struct bd2802_led*) ; 
 int /*<<< orphan*/  FUNC4 (struct bd2802_led*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct bd2802_led *led, enum led_ids id,
							enum led_colors color)
{
	u8 reg;

	if (FUNC2(led) && !led->adf_on)
		FUNC3(led);

	reg = FUNC1(id, color, BD2802_REG_CURRENT1SETUP);
	FUNC5(led->client, reg, led->rgb_current);
	reg = FUNC1(id, color, BD2802_REG_CURRENT2SETUP);
	FUNC5(led->client, reg, BD2802_CURRENT_000);
	reg = FUNC1(id, color, BD2802_REG_WAVEPATTERN);
	FUNC5(led->client, reg, BD2802_PATTERN_FULL);

	FUNC0(led, id);
	FUNC4(led, id, color, BD2802_ON);
}