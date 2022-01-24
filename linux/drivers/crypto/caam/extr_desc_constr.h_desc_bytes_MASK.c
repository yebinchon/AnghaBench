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
 int CAAM_CMD_SZ ; 
 int FUNC0 (void* const) ; 

__attribute__((used)) static inline int FUNC1(void * const desc)
{
	return FUNC0(desc) * CAAM_CMD_SZ;
}