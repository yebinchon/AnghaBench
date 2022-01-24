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
struct intel_uncore {int fw_domains; int fw_domains_active; } ;
typedef  enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int) ; 

__attribute__((used)) static inline void FUNC2(struct intel_uncore *uncore,
				     enum forcewake_domains fw_domains)
{
	FUNC0(!fw_domains);

	/* Turn on all requested but inactive supported forcewake domains. */
	fw_domains &= uncore->fw_domains;
	fw_domains &= ~uncore->fw_domains_active;

	if (fw_domains)
		FUNC1(uncore, fw_domains);
}