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
struct icp_qat_uof_batch_init {struct icp_qat_uof_batch_init* next; } ;
struct icp_qat_fw_loader_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct icp_qat_uof_batch_init*) ; 

__attribute__((used)) static void
FUNC1(struct icp_qat_fw_loader_handle *handle,
				 struct icp_qat_uof_batch_init **base)
{
	struct icp_qat_uof_batch_init *umem_init;

	umem_init = *base;
	while (umem_init) {
		struct icp_qat_uof_batch_init *pre;

		pre = umem_init;
		umem_init = umem_init->next;
		FUNC0(pre);
	}
	*base = NULL;
}