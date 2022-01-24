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
typedef  int u32 ;
struct intel_uncore {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  GTFIFODBG ; 
 int FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static bool
FUNC4(struct intel_uncore *uncore)
{
	u32 fifodbg;

	fifodbg = FUNC1(uncore, GTFIFODBG);

	if (FUNC3(fifodbg)) {
		FUNC0("GTFIFODBG = 0x08%x\n", fifodbg);
		FUNC2(uncore, GTFIFODBG, fifodbg);
	}

	return fifodbg;
}