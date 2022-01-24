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
struct dmar_drhd_unit {int include_all; scalar_t__ devices_cnt; int /*<<< orphan*/ * devices; int /*<<< orphan*/  segment; int /*<<< orphan*/  reg_base_addr; void* hdr; } ;
struct acpi_dmar_header {scalar_t__ length; } ;
struct TYPE_2__ {int length; } ;
struct acpi_dmar_hardware_unit {int flags; TYPE_1__ header; int /*<<< orphan*/  segment; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct dmar_drhd_unit*) ; 
 int /*<<< orphan*/ * FUNC1 (void*,void*,scalar_t__*) ; 
 struct dmar_drhd_unit* FUNC2 (struct acpi_dmar_hardware_unit*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmar_drhd_unit*) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_drhd_unit*) ; 
 struct dmar_drhd_unit* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,struct acpi_dmar_header*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct acpi_dmar_header *header, void *arg)
{
	struct acpi_dmar_hardware_unit *drhd;
	struct dmar_drhd_unit *dmaru;
	int ret;

	drhd = (struct acpi_dmar_hardware_unit *)header;
	dmaru = FUNC2(drhd);
	if (dmaru)
		goto out;

	dmaru = FUNC6(sizeof(*dmaru) + header->length, GFP_KERNEL);
	if (!dmaru)
		return -ENOMEM;

	/*
	 * If header is allocated from slab by ACPI _DSM method, we need to
	 * copy the content because the memory buffer will be freed on return.
	 */
	dmaru->hdr = (void *)(dmaru + 1);
	FUNC7(dmaru->hdr, header, header->length);
	dmaru->reg_base_addr = drhd->address;
	dmaru->segment = drhd->segment;
	dmaru->include_all = drhd->flags & 0x1; /* BIT0: INCLUDE_ALL */
	dmaru->devices = FUNC1((void *)(drhd + 1),
					      ((void *)drhd) + drhd->header.length,
					      &dmaru->devices_cnt);
	if (dmaru->devices_cnt && dmaru->devices == NULL) {
		FUNC5(dmaru);
		return -ENOMEM;
	}

	ret = FUNC0(dmaru);
	if (ret) {
		FUNC3(&dmaru->devices,
				    &dmaru->devices_cnt);
		FUNC5(dmaru);
		return ret;
	}
	FUNC4(dmaru);

out:
	if (arg)
		(*(int *)arg)++;

	return 0;
}