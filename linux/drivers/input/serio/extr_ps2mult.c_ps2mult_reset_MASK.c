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
struct ps2mult {int /*<<< orphan*/  lock; int /*<<< orphan*/ * ports; int /*<<< orphan*/  mx_serio; } ;

/* Variables and functions */
 size_t PS2MULT_KBD_PORT ; 
 int /*<<< orphan*/  PS2MULT_SESSION_END ; 
 int /*<<< orphan*/  PS2MULT_SESSION_START ; 
 int /*<<< orphan*/  FUNC0 (struct ps2mult*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct ps2mult *psm)
{
	unsigned long flags;

	FUNC2(&psm->lock, flags);

	FUNC1(psm->mx_serio, PS2MULT_SESSION_END);
	FUNC1(psm->mx_serio, PS2MULT_SESSION_START);

	FUNC0(psm, &psm->ports[PS2MULT_KBD_PORT]);

	FUNC3(&psm->lock, flags);
}