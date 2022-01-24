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
struct bd2802_led {int /*<<< orphan*/  client; } ;
typedef  enum led_ids { ____Placeholder_led_ids } led_ids ;
typedef  enum led_colors { ____Placeholder_led_colors } led_colors ;

/* Variables and functions */
 int /*<<< orphan*/  BD2802_CURRENT_000 ; 
 int /*<<< orphan*/  BD2802_OFF ; 
 int /*<<< orphan*/  BD2802_REG_CURRENT1SETUP ; 
 int /*<<< orphan*/  BD2802_REG_CURRENT2SETUP ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bd2802_led*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bd2802_led*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bd2802_led *led, enum led_ids id,
							enum led_colors color)
{
	u8 reg;

	if (FUNC1(led, id, color))
		return;

	reg = FUNC0(id, color, BD2802_REG_CURRENT1SETUP);
	FUNC3(led->client, reg, BD2802_CURRENT_000);
	reg = FUNC0(id, color, BD2802_REG_CURRENT2SETUP);
	FUNC3(led->client, reg, BD2802_CURRENT_000);

	FUNC2(led, id, color, BD2802_OFF);
}