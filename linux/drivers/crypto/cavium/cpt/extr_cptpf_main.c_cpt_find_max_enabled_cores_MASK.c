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
struct TYPE_2__ {int /*<<< orphan*/  ae; int /*<<< orphan*/  se; } ;
union cptx_pf_constants {TYPE_1__ s; int /*<<< orphan*/  u; int /*<<< orphan*/  member_0; } ;
struct cpt_device {int /*<<< orphan*/  max_ae_cores; int /*<<< orphan*/  max_se_cores; int /*<<< orphan*/  reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cpt_device *cpt)
{
	union cptx_pf_constants pf_cnsts = {0};

	pf_cnsts.u = FUNC1(cpt->reg_base, FUNC0(0));
	cpt->max_se_cores = pf_cnsts.s.se;
	cpt->max_ae_cores = pf_cnsts.s.ae;
}