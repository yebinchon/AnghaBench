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
struct dcn10_hubp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURSOR_CONTROL ; 
 int /*<<< orphan*/  CURSOR_ENABLE ; 
 int /*<<< orphan*/  DCHUBP_CNTL ; 
 int /*<<< orphan*/  HUBP_TTU_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dcn10_hubp* FUNC1 (struct hubp*) ; 

__attribute__((used)) static void FUNC2(struct hubp *hubp)
{
	struct dcn10_hubp *hubp1 = FUNC1(hubp);

	FUNC0(DCHUBP_CNTL,
			HUBP_TTU_DISABLE, 1);

	FUNC0(CURSOR_CONTROL,
			CURSOR_ENABLE, 0);
}