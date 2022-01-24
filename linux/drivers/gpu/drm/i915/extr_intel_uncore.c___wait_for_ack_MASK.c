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
struct intel_uncore_forcewake_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORCEWAKE_ACK_TIMEOUT_MS ; 
 int const FUNC0 (struct intel_uncore_forcewake_domain const*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2(const struct intel_uncore_forcewake_domain *d,
	       const u32 ack,
	       const u32 value)
{
	return FUNC1((FUNC0(d) & ack) == value,
			       FORCEWAKE_ACK_TIMEOUT_MS);
}