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
struct dce10_wm_params {int num_heads; } ;

/* Variables and functions */
 int FUNC0 (struct dce10_wm_params*) ; 
 int FUNC1 (struct dce10_wm_params*) ; 

__attribute__((used)) static bool FUNC2(struct dce10_wm_params *wm)
{
	if (FUNC1(wm) <=
	    (FUNC0(wm) / wm->num_heads))
		return true;
	else
		return false;
}