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
struct ps2mult {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PS2MULT_SESSION_END ; 
 int /*<<< orphan*/  FUNC0 (struct ps2mult*) ; 
 int /*<<< orphan*/  FUNC1 (struct serio*) ; 
 struct ps2mult* FUNC2 (struct serio*) ; 
 int /*<<< orphan*/  FUNC3 (struct serio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct serio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct serio *serio)
{
	struct ps2mult *psm = FUNC2(serio);

	/* Note that serio core already take care of children ports */
	FUNC4(serio, PS2MULT_SESSION_END);
	FUNC1(serio);
	FUNC0(psm);

	FUNC3(serio, NULL);
}