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
 unsigned int FUNC0 (char const**) ; 
 char const** mem_err_type_strs ; 

const char *FUNC1(unsigned int etype)
{
	return etype < FUNC0(mem_err_type_strs) ?
		mem_err_type_strs[etype] : "unknown";
}