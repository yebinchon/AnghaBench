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
struct sermouse {scalar_t__ type; scalar_t__ last; scalar_t__ count; } ;
struct serio {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SERIO_SUN ; 
 scalar_t__ jiffies ; 
 struct sermouse* FUNC0 (struct serio*) ; 
 int /*<<< orphan*/  FUNC1 (struct sermouse*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct sermouse*,unsigned char) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(struct serio *serio,
		unsigned char data, unsigned int flags)
{
	struct sermouse *sermouse = FUNC0(serio);

	if (FUNC3(jiffies, sermouse->last + HZ/10))
		sermouse->count = 0;

	sermouse->last = jiffies;

	if (sermouse->type > SERIO_SUN)
		FUNC1(sermouse, data);
	else
		FUNC2(sermouse, data);

	return IRQ_HANDLED;
}