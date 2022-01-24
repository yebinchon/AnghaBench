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
struct intel_lspcon {int dummy; } ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 struct intel_digital_port* FUNC1 (struct intel_dp*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 struct intel_dp* FUNC4 (struct intel_lspcon*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(struct intel_lspcon *lspcon)
{
	struct intel_dp *intel_dp = FUNC4(lspcon);
	struct intel_digital_port *dig_port = FUNC1(intel_dp);
	unsigned long start = jiffies;

	while (1) {
		if (FUNC2(&dig_port->base)) {
			FUNC0("LSPCON recovering in PCON mode after %u ms\n",
				      FUNC3(jiffies - start));
			return;
		}

		if (FUNC6(jiffies, start + FUNC5(1000)))
			break;

		FUNC7(10000, 15000);
	}

	FUNC0("LSPCON DP descriptor mismatch after resume\n");
}