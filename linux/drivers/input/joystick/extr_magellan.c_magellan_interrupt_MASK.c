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
struct serio {int dummy; } ;
struct magellan {scalar_t__ idx; unsigned char* data; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MAGELLAN_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct magellan*) ; 
 struct magellan* FUNC1 (struct serio*) ; 

__attribute__((used)) static irqreturn_t FUNC2(struct serio *serio,
		unsigned char data, unsigned int flags)
{
	struct magellan* magellan = FUNC1(serio);

	if (data == '\r') {
		FUNC0(magellan);
		magellan->idx = 0;
	} else {
		if (magellan->idx < MAGELLAN_MAX_LENGTH)
			magellan->data[magellan->idx++] = data;
	}
	return IRQ_HANDLED;
}