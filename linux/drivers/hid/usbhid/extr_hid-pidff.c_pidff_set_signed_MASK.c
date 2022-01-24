#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pidff_usage {void** value; TYPE_1__* field; } ;
typedef  int /*<<< orphan*/  s16 ;
struct TYPE_3__ {scalar_t__ logical_minimum; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC3(struct pidff_usage *usage, s16 value)
{
	if (usage->field->logical_minimum < 0)
		usage->value[0] = FUNC1(value, usage->field);
	else {
		if (value < 0)
			usage->value[0] =
			    FUNC0(-value, 0x8000, usage->field);
		else
			usage->value[0] =
			    FUNC0(value, 0x7fff, usage->field);
	}
	FUNC2("calculated from %d to %d\n", value, usage->value[0]);
}