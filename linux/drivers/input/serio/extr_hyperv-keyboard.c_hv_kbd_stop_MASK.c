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
struct serio {struct hv_kbd_dev* port_data; } ;
struct hv_kbd_dev {int started; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct serio *serio)
{
	struct hv_kbd_dev *kbd_dev = serio->port_data;
	unsigned long flags;

	FUNC0(&kbd_dev->lock, flags);
	kbd_dev->started = false;
	FUNC1(&kbd_dev->lock, flags);
}