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
typedef  int uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  ibf_lock; scalar_t__ ibf; int /*<<< orphan*/  status_io; } ;

/* Variables and functions */
 int HP_SDC_STATUS_IBF ; 
 TYPE_1__ hp_sdc ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline uint8_t FUNC3(void)
{
	uint8_t status;
	unsigned long flags;

	FUNC1(&hp_sdc.ibf_lock, flags);
	status = FUNC0(hp_sdc.status_io);
	if (!(status & HP_SDC_STATUS_IBF))
		hp_sdc.ibf = 0;
	FUNC2(&hp_sdc.ibf_lock, flags);

	return status;
}