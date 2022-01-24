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
struct walkera_dev {TYPE_1__* parport; int /*<<< orphan*/  pardevice; int /*<<< orphan*/  input_dev; } ;
struct parport {scalar_t__ number; } ;
struct TYPE_2__ {scalar_t__ number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct walkera_dev w_dev ; 

__attribute__((used)) static void FUNC2(struct parport *port)
{
	struct walkera_dev *w = &w_dev;

	if (!w->pardevice || w->parport->number != port->number)
		return;

	FUNC0(w->input_dev);
	FUNC1(w->pardevice);
	w->parport = NULL;
}