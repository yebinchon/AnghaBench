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
struct gameport {int dummy; } ;
struct adi_port {TYPE_1__* adi; } ;
struct TYPE_2__ {scalar_t__ length; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gameport*) ; 
 struct adi_port* FUNC1 (struct gameport*) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adi_port*) ; 

__attribute__((used)) static void FUNC5(struct gameport *gameport)
{
	int i;
	struct adi_port *port = FUNC1(gameport);

	for (i = 0; i < 2; i++)
		if (port->adi[i].length > 0)
			FUNC3(port->adi[i].dev);
	FUNC0(gameport);
	FUNC2(gameport, NULL);
	FUNC4(port);
}