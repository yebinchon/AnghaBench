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
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int IS_VARIOUS_START ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * various_names ; 

__attribute__((used)) static char *FUNC3(char *buf, size_t bsize, unsigned int source)
{
	if (source < FUNC0(various_names))
		FUNC2(buf, various_names[source], bsize);
	else
		FUNC1(buf, bsize, "Reserved%u", source + IS_VARIOUS_START);
	return buf;
}