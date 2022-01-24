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
struct serio {int /*<<< orphan*/  dev; } ;
struct hampshire {unsigned char* data; size_t idx; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int HAMPSHIRE_RESPONSE_BEGIN_BYTE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hampshire*) ; 
 struct hampshire* FUNC2 (struct serio*) ; 

__attribute__((used)) static irqreturn_t FUNC3(struct serio *serio,
		unsigned char data, unsigned int flags)
{
	struct hampshire *phampshire = FUNC2(serio);

	phampshire->data[phampshire->idx] = data;

	if (HAMPSHIRE_RESPONSE_BEGIN_BYTE & phampshire->data[0])
		FUNC1(phampshire);
	else
		FUNC0(&serio->dev, "unknown/unsynchronized data: %x\n",
			phampshire->data[0]);

	return IRQ_HANDLED;
}