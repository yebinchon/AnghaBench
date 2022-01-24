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
typedef  int /*<<< orphan*/  rwlock_t ;
struct TYPE_2__ {scalar_t__ ibf; int /*<<< orphan*/  status_io; int /*<<< orphan*/  ibf_lock; } ;

/* Variables and functions */
 int HP_SDC_STATUS_IBF ; 
 TYPE_1__ hp_sdc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC6(void)
{
	unsigned long flags;
	rwlock_t *lock;

	lock = &hp_sdc.ibf_lock;

	FUNC0(lock, flags);
	if (!hp_sdc.ibf) {
		FUNC2(lock, flags);
		return;
	}
	FUNC1(lock);
	FUNC4(lock);
	while (FUNC3(hp_sdc.status_io) & HP_SDC_STATUS_IBF)
		{ }
	hp_sdc.ibf = 0;
	FUNC5(lock, flags);
}