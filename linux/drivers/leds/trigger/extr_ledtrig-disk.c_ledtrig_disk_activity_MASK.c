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

/* Variables and functions */
 unsigned long BLINK_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long*,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ledtrig_disk ; 
 int /*<<< orphan*/  ledtrig_disk_read ; 
 int /*<<< orphan*/  ledtrig_disk_write ; 
 int /*<<< orphan*/  ledtrig_ide ; 

void FUNC1(bool write)
{
	unsigned long blink_delay = BLINK_DELAY;

	FUNC0(ledtrig_disk,
				  &blink_delay, &blink_delay, 0);
	FUNC0(ledtrig_ide,
				  &blink_delay, &blink_delay, 0);
	if (write)
		FUNC0(ledtrig_disk_write,
					  &blink_delay, &blink_delay, 0);
	else
		FUNC0(ledtrig_disk_read,
					  &blink_delay, &blink_delay, 0);
}