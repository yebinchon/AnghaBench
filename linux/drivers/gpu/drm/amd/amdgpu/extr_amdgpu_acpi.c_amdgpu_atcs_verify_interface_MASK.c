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
struct TYPE_2__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef  size_t u16 ;
struct atcs_verify_interface {int /*<<< orphan*/  function_bits; int /*<<< orphan*/  version; } ;
struct amdgpu_atcs {int /*<<< orphan*/  functions; } ;
typedef  int /*<<< orphan*/  output ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ATCS_FUNCTION_VERIFY_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int EINVAL ; 
 int EIO ; 
 union acpi_object* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct atcs_verify_interface*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct atcs_verify_interface*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC7 (int,size_t) ; 

__attribute__((used)) static int FUNC8(acpi_handle handle,
					struct amdgpu_atcs *atcs)
{
	union acpi_object *info;
	struct atcs_verify_interface output;
	size_t size;
	int err = 0;

	info = FUNC2(handle, ATCS_FUNCTION_VERIFY_INTERFACE, NULL);
	if (!info)
		return -EIO;

	FUNC6(&output, 0, sizeof(output));

	size = *(u16 *) info->buffer.pointer;
	if (size < 8) {
		FUNC1("ATCS buffer is too small: %zu\n", size);
		err = -EINVAL;
		goto out;
	}
	size = FUNC7(sizeof(output), size);

	FUNC5(&output, info->buffer.pointer, size);

	/* TODO: check version? */
	FUNC0("ATCS version %u\n", output.version);

	FUNC3(&atcs->functions, output.function_bits);

out:
	FUNC4(info);
	return err;
}