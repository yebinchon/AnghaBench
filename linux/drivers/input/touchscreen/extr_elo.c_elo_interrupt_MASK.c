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
struct elo {int id; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct elo*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct elo*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct elo*,unsigned char) ; 
 struct elo* FUNC3 (struct serio*) ; 

__attribute__((used)) static irqreturn_t FUNC4(struct serio *serio,
		unsigned char data, unsigned int flags)
{
	struct elo *elo = FUNC3(serio);

	switch (elo->id) {
	case 0:
		FUNC0(elo, data);
		break;

	case 1:
	case 2:
		FUNC2(elo, data);
		break;

	case 3:
		FUNC1(elo, data);
		break;
	}

	return IRQ_HANDLED;
}