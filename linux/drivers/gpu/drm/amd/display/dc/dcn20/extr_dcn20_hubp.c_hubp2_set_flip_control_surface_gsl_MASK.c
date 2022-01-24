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
struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCSURF_FLIP_CONTROL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SURFACE_GSL_ENABLE ; 
 struct dcn20_hubp* FUNC1 (struct hubp*) ; 

void FUNC2(struct hubp *hubp, bool enable)
{
	struct dcn20_hubp *hubp2 = FUNC1(hubp);

	FUNC0(DCSURF_FLIP_CONTROL2, SURFACE_GSL_ENABLE, enable ? 1 : 0);
}