#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct qcm_process_device {int sh_mem_config; int /*<<< orphan*/  sh_mem_bases; TYPE_2__* pqm; scalar_t__ sh_mem_ape1_base; scalar_t__ sh_mem_ape1_limit; } ;
struct kfd_process_device {int dummy; } ;
struct device_queue_manager {int dummy; } ;
struct TYPE_4__ {TYPE_1__* process; } ;
struct TYPE_3__ {int /*<<< orphan*/  is_32bit_user_mode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTYPE_NONCACHED ; 
 int /*<<< orphan*/  SH_MEM_ALIGNMENT_MODE_UNALIGNED ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (struct kfd_process_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct kfd_process_device* FUNC6 (struct qcm_process_device*) ; 

__attribute__((used)) static int FUNC7(struct device_queue_manager *dqm,
		struct qcm_process_device *qpd)
{
	struct kfd_process_device *pdd;
	unsigned int temp;

	pdd = FUNC6(qpd);

	/* check if sh_mem_config register already configured */
	if (qpd->sh_mem_config == 0) {
		qpd->sh_mem_config =
			FUNC0(SH_MEM_ALIGNMENT_MODE_UNALIGNED) |
			FUNC2(MTYPE_NONCACHED) |
			FUNC1(MTYPE_NONCACHED);
		qpd->sh_mem_ape1_limit = 0;
		qpd->sh_mem_ape1_base = 0;
	}

	/* On dGPU we're always in GPUVM64 addressing mode with 64-bit
	 * aperture addresses.
	 */
	temp = FUNC4(pdd);
	qpd->sh_mem_bases = FUNC3(temp);

	FUNC5("is32bit process: %d sh_mem_bases nybble: 0x%X and register 0x%X\n",
		qpd->pqm->process->is_32bit_user_mode, temp, qpd->sh_mem_bases);

	return 0;
}