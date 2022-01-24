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
struct mod_freesync {int dummy; } ;
struct core_freesync {int dummy; } ;

/* Variables and functions */
 struct core_freesync* FUNC0 (struct mod_freesync*) ; 
 int /*<<< orphan*/  FUNC1 (struct core_freesync*) ; 

void FUNC2(struct mod_freesync *mod_freesync)
{
	struct core_freesync *core_freesync = NULL;
	if (mod_freesync == NULL)
		return;
	core_freesync = FUNC0(mod_freesync);
	FUNC1(core_freesync);
}