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
struct TYPE_2__ {int /*<<< orphan*/  num_wait; } ;
union cptx_vqx_done_wait {int /*<<< orphan*/  u; TYPE_1__ s; } ;
typedef  int /*<<< orphan*/  u32 ;
struct cpt_vf {int /*<<< orphan*/  reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct cpt_vf *cptvf, u32 val)
{
	union cptx_vqx_done_wait vqx_dwait;

	vqx_dwait.u = FUNC1(cptvf->reg_base,
				     FUNC0(0, 0));
	vqx_dwait.s.num_wait = val;
	FUNC2(cptvf->reg_base, FUNC0(0, 0),
			vqx_dwait.u);
}