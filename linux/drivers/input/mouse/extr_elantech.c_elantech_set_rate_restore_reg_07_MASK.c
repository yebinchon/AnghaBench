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
struct psmouse {struct elantech_data* private; } ;
struct elantech_data {int /*<<< orphan*/  reg_07; int /*<<< orphan*/  (* original_set_rate ) (struct psmouse*,unsigned int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct psmouse*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct psmouse *psmouse,
		unsigned int rate)
{
	struct elantech_data *etd = psmouse->private;

	etd->original_set_rate(psmouse, rate);
	if (FUNC0(psmouse, 0x07, etd->reg_07))
		FUNC1(psmouse, "restoring reg_07 failed\n");
}