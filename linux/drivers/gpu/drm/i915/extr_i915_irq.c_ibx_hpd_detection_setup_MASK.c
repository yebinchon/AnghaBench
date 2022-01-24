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
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PCH_PORT_HOTPLUG ; 
 int PORTA_HOTPLUG_ENABLE ; 
 int PORTB_HOTPLUG_ENABLE ; 
 int PORTB_PULSE_DURATION_2ms ; 
 int PORTB_PULSE_DURATION_MASK ; 
 int PORTC_HOTPLUG_ENABLE ; 
 int PORTC_PULSE_DURATION_2ms ; 
 int PORTC_PULSE_DURATION_MASK ; 
 int PORTD_HOTPLUG_ENABLE ; 
 int PORTD_PULSE_DURATION_2ms ; 
 int PORTD_PULSE_DURATION_MASK ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	u32 hotplug;

	/*
	 * Enable digital hotplug on the PCH, and configure the DP short pulse
	 * duration to 2ms (which is the minimum in the Display Port spec).
	 * The pulse duration bits are reserved on LPT+.
	 */
	hotplug = FUNC1(PCH_PORT_HOTPLUG);
	hotplug &= ~(PORTB_PULSE_DURATION_MASK |
		     PORTC_PULSE_DURATION_MASK |
		     PORTD_PULSE_DURATION_MASK);
	hotplug |= PORTB_HOTPLUG_ENABLE | PORTB_PULSE_DURATION_2ms;
	hotplug |= PORTC_HOTPLUG_ENABLE | PORTC_PULSE_DURATION_2ms;
	hotplug |= PORTD_HOTPLUG_ENABLE | PORTD_PULSE_DURATION_2ms;
	/*
	 * When CPU and PCH are on the same package, port A
	 * HPD must be enabled in both north and south.
	 */
	if (FUNC0(dev_priv))
		hotplug |= PORTA_HOTPLUG_ENABLE;
	FUNC2(PCH_PORT_HOTPLUG, hotplug);
}