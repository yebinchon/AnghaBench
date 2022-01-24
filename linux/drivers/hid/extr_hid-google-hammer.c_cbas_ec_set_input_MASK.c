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
struct input_dev {int dummy; } ;
struct TYPE_2__ {struct input_dev* input; } ;

/* Variables and functions */
 TYPE_1__ cbas_ec ; 
 int /*<<< orphan*/  cbas_ec_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct input_dev *input)
{
	/* Take the lock so hammer_event() does not race with us here */
	FUNC0(&cbas_ec_lock);
	cbas_ec.input = input;
	FUNC1(&cbas_ec_lock);
}