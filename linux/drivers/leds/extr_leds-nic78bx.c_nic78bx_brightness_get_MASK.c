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
typedef  int u8 ;
struct nic78bx_led {int bit; TYPE_1__* data; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  io_base; } ;

/* Variables and functions */
 int LED_OFF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct nic78bx_led* FUNC3 (struct led_classdev*) ; 

__attribute__((used)) static enum led_brightness FUNC4(struct led_classdev *cdev)
{
	struct nic78bx_led *nled = FUNC3(cdev);
	unsigned long flags;
	u8 value;

	FUNC1(&nled->data->lock, flags);
	value = FUNC0(nled->data->io_base);
	FUNC2(&nled->data->lock, flags);

	return (value & nled->bit) ? 1 : LED_OFF;
}