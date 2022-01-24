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

/* Variables and functions */
 unsigned int FUNC0 (char const* const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,...) ; 

__attribute__((used)) static char *FUNC2(char *buf, size_t bsize, unsigned int source)
{
	static const char * const dc_int_names[] = {
		"common",
		"lcb",
		"8051",
		"lbm"	/* local block merge */
	};

	if (source < FUNC0(dc_int_names))
		FUNC1(buf, bsize, "dc_%s_int", dc_int_names[source]);
	else
		FUNC1(buf, bsize, "DCInt%u", source);
	return buf;
}