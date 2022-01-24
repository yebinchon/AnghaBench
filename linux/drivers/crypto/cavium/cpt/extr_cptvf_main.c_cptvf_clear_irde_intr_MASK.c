#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int irde; } ;
union cptx_vqx_misc_int {int /*<<< orphan*/  u; TYPE_1__ s; } ;
struct cpt_vf {int /*<<< orphan*/  reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cpt_vf *cptvf)
{
	union cptx_vqx_misc_int vqx_misc_int;

	vqx_misc_int.u = FUNC1(cptvf->reg_base,
					FUNC0(0, 0));
	/* W1C for the VF */
	vqx_misc_int.s.irde = 1;
	FUNC2(cptvf->reg_base, FUNC0(0, 0),
			vqx_misc_int.u);
}