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
typedef  union acpi_object {int dummy; } acpi_object ;
typedef  scalar_t__ u8 ;
struct atpx_power_control {int size; scalar_t__ dgpu_state; } ;
struct TYPE_2__ {scalar_t__ power_cntl; } ;
struct amdgpu_atpx {int /*<<< orphan*/  handle; TYPE_1__ functions; } ;
struct acpi_buffer {int length; struct atpx_power_control* pointer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATPX_FUNCTION_POWER_CONTROL ; 
 int EIO ; 
 union acpi_object* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_atpx *atpx, u8 state)
{
	struct acpi_buffer params;
	union acpi_object *info;
	struct atpx_power_control input;

	if (atpx->functions.power_cntl) {
		input.size = 3;
		input.dgpu_state = state;
		params.length = input.size;
		params.pointer = &input;
		info = FUNC0(atpx->handle,
					ATPX_FUNCTION_POWER_CONTROL,
					&params);
		if (!info)
			return -EIO;
		FUNC1(info);

		/* 200ms delay is required after off */
		if (state == 0)
			FUNC2(200);
	}
	return 0;
}