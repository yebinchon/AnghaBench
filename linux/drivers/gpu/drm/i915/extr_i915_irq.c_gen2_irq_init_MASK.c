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
typedef  int /*<<< orphan*/  u32 ;
struct intel_uncore {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN2_IER ; 
 int /*<<< orphan*/  GEN2_IMR ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct intel_uncore *uncore,
		   u32 imr_val, u32 ier_val)
{
	FUNC0(uncore);

	FUNC2(uncore, GEN2_IER, ier_val);
	FUNC2(uncore, GEN2_IMR, imr_val);
	FUNC1(uncore, GEN2_IMR);
}