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
struct intel_uncore {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN2_IER ; 
 int /*<<< orphan*/  GEN2_IIR ; 
 int /*<<< orphan*/  GEN2_IMR ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct intel_uncore *uncore)
{
	FUNC1(uncore, GEN2_IMR, 0xffff);
	FUNC0(uncore, GEN2_IMR);

	FUNC1(uncore, GEN2_IER, 0);

	/* IIR can theoretically queue up two events. Be paranoid. */
	FUNC1(uncore, GEN2_IIR, 0xffff);
	FUNC0(uncore, GEN2_IIR);
	FUNC1(uncore, GEN2_IIR, 0xffff);
	FUNC0(uncore, GEN2_IIR);
}