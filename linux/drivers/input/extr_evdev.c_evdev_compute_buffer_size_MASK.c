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
struct input_dev {int hint_events_per_packet; } ;

/* Variables and functions */
 int EVDEV_BUF_PACKETS ; 
 int /*<<< orphan*/  EVDEV_MIN_BUFFER_SIZE ; 
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int) ; 

__attribute__((used)) static unsigned int FUNC2(struct input_dev *dev)
{
	unsigned int n_events =
		FUNC0(dev->hint_events_per_packet * EVDEV_BUF_PACKETS,
		    EVDEV_MIN_BUFFER_SIZE);

	return FUNC1(n_events);
}