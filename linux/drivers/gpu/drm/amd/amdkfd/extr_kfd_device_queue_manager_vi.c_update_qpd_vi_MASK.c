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
struct qcm_process_device {int sh_mem_config; unsigned int sh_mem_bases; TYPE_2__* pqm; scalar_t__ sh_mem_ape1_base; scalar_t__ sh_mem_ape1_limit; } ;
struct kfd_process_device {int dummy; } ;
struct device_queue_manager {int dummy; } ;
struct TYPE_4__ {TYPE_1__* process; } ;
struct TYPE_3__ {scalar_t__ is_32bit_user_mode; } ;

/* Variables and functions */
 int MTYPE_CC ; 
 int SH_MEM_ADDRESS_MODE_HSA32 ; 
 int SH_MEM_ADDRESS_MODE_HSA64 ; 
 int SH_MEM_ALIGNMENT_MODE_UNALIGNED ; 
 unsigned int SH_MEM_BASES__SHARED_BASE__SHIFT ; 
 int SH_MEM_CONFIG__ADDRESS_MODE__SHIFT ; 
 int SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT ; 
 int SH_MEM_CONFIG__APE1_MTYPE__SHIFT ; 
 int SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT ; 
 int SH_MEM_CONFIG__PRIVATE_ATC_MASK ; 
 int SH_MEM_CONFIG__PRIVATE_ATC__SHIFT ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (struct kfd_process_device*) ; 
 unsigned int FUNC2 (struct kfd_process_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,unsigned int,unsigned int) ; 
 struct kfd_process_device* FUNC4 (struct qcm_process_device*) ; 

__attribute__((used)) static int FUNC5(struct device_queue_manager *dqm,
					struct qcm_process_device *qpd)
{
	struct kfd_process_device *pdd;
	unsigned int temp;

	pdd = FUNC4(qpd);

	/* check if sh_mem_config register already configured */
	if (qpd->sh_mem_config == 0) {
		qpd->sh_mem_config =
			SH_MEM_ALIGNMENT_MODE_UNALIGNED <<
				SH_MEM_CONFIG__ALIGNMENT_MODE__SHIFT |
			MTYPE_CC << SH_MEM_CONFIG__DEFAULT_MTYPE__SHIFT |
			MTYPE_CC << SH_MEM_CONFIG__APE1_MTYPE__SHIFT |
			SH_MEM_CONFIG__PRIVATE_ATC_MASK;

		qpd->sh_mem_ape1_limit = 0;
		qpd->sh_mem_ape1_base = 0;
	}

	if (qpd->pqm->process->is_32bit_user_mode) {
		temp = FUNC1(pdd);
		qpd->sh_mem_bases = temp << SH_MEM_BASES__SHARED_BASE__SHIFT;
		qpd->sh_mem_config |= SH_MEM_ADDRESS_MODE_HSA32 <<
					SH_MEM_CONFIG__ADDRESS_MODE__SHIFT;
	} else {
		temp = FUNC2(pdd);
		qpd->sh_mem_bases = FUNC0(temp);
		qpd->sh_mem_config |= SH_MEM_ADDRESS_MODE_HSA64 <<
			SH_MEM_CONFIG__ADDRESS_MODE__SHIFT;
		qpd->sh_mem_config |= 1  <<
			SH_MEM_CONFIG__PRIVATE_ATC__SHIFT;
	}

	FUNC3("is32bit process: %d sh_mem_bases nybble: 0x%X and register 0x%X\n",
		qpd->pqm->process->is_32bit_user_mode, temp, qpd->sh_mem_bases);

	return 0;
}