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
typedef  enum intel_platform { ____Placeholder_intel_platform } intel_platform ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ INTEL_MAX_PLATFORMS ; 
 scalar_t__ FUNC2 (int) ; 
 char const** platform_names ; 

const char *FUNC3(enum intel_platform platform)
{
	FUNC1(FUNC0(platform_names) != INTEL_MAX_PLATFORMS);

	if (FUNC2(platform >= FUNC0(platform_names) ||
			 platform_names[platform] == NULL))
		return "<unknown>";

	return platform_names[platform];
}