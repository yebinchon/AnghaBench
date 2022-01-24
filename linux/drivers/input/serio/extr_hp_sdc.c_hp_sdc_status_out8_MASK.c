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
struct TYPE_2__ {int ibf; int wi; int /*<<< orphan*/  ibf_lock; int /*<<< orphan*/  status_io; } ;

/* Variables and functions */
 TYPE_1__ hp_sdc ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(uint8_t val)
{
	unsigned long flags;

	FUNC1(&hp_sdc.ibf_lock, flags);
	hp_sdc.ibf = 1;
	if ((val & 0xf0) == 0xe0)
		hp_sdc.wi = 0xff;
	FUNC0(val, hp_sdc.status_io);
	FUNC2(&hp_sdc.ibf_lock, flags);
}