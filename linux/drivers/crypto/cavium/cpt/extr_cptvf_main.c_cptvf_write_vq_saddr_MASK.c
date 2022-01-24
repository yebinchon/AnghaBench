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
union cptx_vqx_saddr {int /*<<< orphan*/  u; } ;
typedef  int /*<<< orphan*/  u64 ;
struct cpt_vf {int /*<<< orphan*/  reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cpt_vf *cptvf, u64 val)
{
	union cptx_vqx_saddr vqx_saddr;

	vqx_saddr.u = val;
	FUNC1(cptvf->reg_base, FUNC0(0, 0), vqx_saddr.u);
}