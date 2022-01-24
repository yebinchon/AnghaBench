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

/* Variables and functions */
 int EINVAL ; 
 int GEN8_RPCS_SS_CNT_ENABLE ; 
 int GEN8_RPCS_SS_CNT_MASK ; 
 int GEN8_RPCS_SS_CNT_SHIFT ; 
 int GEN8_RPCS_S_CNT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,char*,int,char*) ; 

__attribute__((used)) static int
FUNC2(const char *name, u32 rpcs, int slices, unsigned int expected,
	     const char *prefix, const char *suffix)
{
	if (slices == expected)
		return 0;

	if (slices < 0) {
		FUNC0("%s: %s read slice count failed with %d%s\n",
		       name, prefix, slices, suffix);
		return slices;
	}

	FUNC0("%s: %s slice count %d is not %u%s\n",
	       name, prefix, slices, expected, suffix);

	FUNC1("RPCS=0x%x; %u%sx%u%s\n",
		rpcs, slices,
		(rpcs & GEN8_RPCS_S_CNT_ENABLE) ? "*" : "",
		(rpcs & GEN8_RPCS_SS_CNT_MASK) >> GEN8_RPCS_SS_CNT_SHIFT,
		(rpcs & GEN8_RPCS_SS_CNT_ENABLE) ? "*" : "");

	return -EINVAL;
}