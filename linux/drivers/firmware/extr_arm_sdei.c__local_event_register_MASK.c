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
struct sdei_registered_event {int dummy; } ;
struct sdei_crosscall_args {TYPE_1__* event; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_num; int /*<<< orphan*/  private_registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sdei_registered_event* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sdei_registered_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdei_crosscall_args*,int) ; 
 int /*<<< orphan*/  sdei_entry_point ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *data)
{
	int err;
	struct sdei_registered_event *reg;
	struct sdei_crosscall_args *arg = data;

	FUNC0(FUNC2());

	reg = FUNC1(arg->event->private_registered, FUNC5());
	err = FUNC3(arg->event->event_num, sdei_entry_point,
				      reg, 0, 0);

	FUNC4(arg, err);
}