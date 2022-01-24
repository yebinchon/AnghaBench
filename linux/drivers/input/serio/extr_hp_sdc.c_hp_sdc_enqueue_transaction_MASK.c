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
typedef  int /*<<< orphan*/  hp_sdc_transaction ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ hp_sdc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(hp_sdc_transaction *this) {
	unsigned long flags;
	int ret;

	FUNC1(&hp_sdc.lock, flags);
	ret = FUNC0(this);
	FUNC2(&hp_sdc.lock,flags);

	return ret;
}