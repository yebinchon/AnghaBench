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
typedef  scalar_t__ u32 ;
struct dmm {scalar_t__ base; int /*<<< orphan*/  wa_lock; scalar_t__ dmm_workaround; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmm*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct dmm *dmm, u32 val, u32 reg)
{
	if (dmm->dmm_workaround) {
		unsigned long flags;

		FUNC1(&dmm->wa_lock, flags);
		FUNC0(dmm, val, reg);
		FUNC2(&dmm->wa_lock, flags);
	} else {
		FUNC3(val, dmm->base + reg);
	}
}