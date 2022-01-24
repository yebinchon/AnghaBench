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
struct intel_uncore {int dummy; } ;
struct intel_gt {struct intel_uncore* uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN11_BCS_RSVD_INTR_MASK ; 
 int /*<<< orphan*/  GEN11_GPM_WGBOXPERF_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_GPM_WGBOXPERF_INTR_MASK ; 
 int /*<<< orphan*/  GEN11_GUC_SG_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_GUC_SG_INTR_MASK ; 
 int /*<<< orphan*/  GEN11_RCS0_RSVD_INTR_MASK ; 
 int /*<<< orphan*/  GEN11_RENDER_COPY_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_VCS0_VCS1_INTR_MASK ; 
 int /*<<< orphan*/  GEN11_VCS2_VCS3_INTR_MASK ; 
 int /*<<< orphan*/  GEN11_VCS_VECS_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_VECS0_VECS1_INTR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct intel_gt *gt)
{
	struct intel_uncore *uncore = gt->uncore;

	/* Disable RCS, BCS, VCS and VECS class engines. */
	FUNC0(uncore, GEN11_RENDER_COPY_INTR_ENABLE, 0);
	FUNC0(uncore, GEN11_VCS_VECS_INTR_ENABLE,	  0);

	/* Restore masks irqs on RCS, BCS, VCS and VECS engines. */
	FUNC0(uncore, GEN11_RCS0_RSVD_INTR_MASK,	~0);
	FUNC0(uncore, GEN11_BCS_RSVD_INTR_MASK,	~0);
	FUNC0(uncore, GEN11_VCS0_VCS1_INTR_MASK,	~0);
	FUNC0(uncore, GEN11_VCS2_VCS3_INTR_MASK,	~0);
	FUNC0(uncore, GEN11_VECS0_VECS1_INTR_MASK,	~0);

	FUNC0(uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE, 0);
	FUNC0(uncore, GEN11_GPM_WGBOXPERF_INTR_MASK,  ~0);
	FUNC0(uncore, GEN11_GUC_SG_INTR_ENABLE, 0);
	FUNC0(uncore, GEN11_GUC_SG_INTR_MASK,  ~0);
}