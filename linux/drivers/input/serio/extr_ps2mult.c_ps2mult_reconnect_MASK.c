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
 int /*<<< orphan*/  FUNC0 (struct ps2mult*) ; 
 struct ps2mult* FUNC1 (struct serio*) ; 

__attribute__((used)) static int FUNC2(struct serio *serio)
{
	struct ps2mult *psm = FUNC1(serio);

	FUNC0(psm);

	return 0;
}