#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct parport {scalar_t__ number; } ;
struct db9 {scalar_t__ parportno; size_t mode; int /*<<< orphan*/  pd; int /*<<< orphan*/ * dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  n_pads; } ;

/* Variables and functions */
 int /*<<< orphan*/  DB9_MAX_DEVICES ; 
 int DB9_MAX_PORTS ; 
 struct db9** db9_base ; 
 TYPE_1__* db9_modes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct db9*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct parport *port)
{
	int i;
	struct db9 *db9;

	for (i = 0; i < DB9_MAX_PORTS; i++) {
		if (db9_base[i] && db9_base[i]->parportno == port->number)
			break;
	}

	if (i == DB9_MAX_PORTS)
		return;

	db9 = db9_base[i];
	db9_base[i] = NULL;

	for (i = 0; i < FUNC2(db9_modes[db9->mode].n_pads, DB9_MAX_DEVICES); i++)
		FUNC0(db9->dev[i]);
	FUNC3(db9->pd);
	FUNC1(db9);
}