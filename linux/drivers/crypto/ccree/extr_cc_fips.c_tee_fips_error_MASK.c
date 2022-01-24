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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ fips_enabled ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static inline void FUNC2(struct device *dev)
{
	if (fips_enabled)
		FUNC1("ccree: TEE reported cryptographic error in fips mode!\n");
	else
		FUNC0(dev, "TEE reported error!\n");
}