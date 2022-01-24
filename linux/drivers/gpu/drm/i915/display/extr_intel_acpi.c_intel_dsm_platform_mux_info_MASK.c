#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * pointer; } ;
struct TYPE_5__ {scalar_t__ value; } ;
struct TYPE_4__ {int count; union acpi_object* elements; } ;
union acpi_object {TYPE_3__ buffer; TYPE_2__ integer; TYPE_1__ package; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  INTEL_DSM_FN_PLATFORM_MUX_INFO ; 
 int /*<<< orphan*/  INTEL_DSM_REVISION_ID ; 
 union acpi_object* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intel_dsm_guid ; 
 unsigned long long FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long long FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(acpi_handle dhandle)
{
	int i;
	union acpi_object *pkg, *connector_count;

	pkg = FUNC2(dhandle, &intel_dsm_guid,
			INTEL_DSM_REVISION_ID, INTEL_DSM_FN_PLATFORM_MUX_INFO,
			NULL, ACPI_TYPE_PACKAGE);
	if (!pkg) {
		FUNC1("failed to evaluate _DSM\n");
		return;
	}

	connector_count = &pkg->package.elements[0];
	FUNC1("MUX info connectors: %lld\n",
		  (unsigned long long)connector_count->integer.value);
	for (i = 1; i < pkg->package.count; i++) {
		union acpi_object *obj = &pkg->package.elements[i];
		union acpi_object *connector_id = &obj->package.elements[0];
		union acpi_object *info = &obj->package.elements[1];
		FUNC1("Connector id: 0x%016llx\n",
			  (unsigned long long)connector_id->integer.value);
		FUNC1("  port id: %s\n",
		       FUNC4(info->buffer.pointer[0]));
		FUNC1("  display mux info: %s\n",
		       FUNC3(info->buffer.pointer[1]));
		FUNC1("  aux/dc mux info: %s\n",
		       FUNC3(info->buffer.pointer[2]));
		FUNC1("  hpd mux info: %s\n",
		       FUNC3(info->buffer.pointer[3]));
	}

	FUNC0(pkg);
}