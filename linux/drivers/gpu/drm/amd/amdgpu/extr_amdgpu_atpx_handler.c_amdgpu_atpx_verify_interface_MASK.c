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
struct atpx_verify_interface {int /*<<< orphan*/  function_bits; int /*<<< orphan*/  version; } ;
struct amdgpu_atpx {int /*<<< orphan*/  functions; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  output ;

/* Variables and functions */
 int /*<<< orphan*/  ATPX_FUNCTION_VERIFY_INTERFACE ; 
 int EINVAL ; 
 int EIO ; 
 union acpi_object* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct atpx_verify_interface*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct atpx_verify_interface*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC5 (int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,...) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_atpx *atpx)
{
	union acpi_object *info;
	struct atpx_verify_interface output;
	size_t size;
	int err = 0;

	info = FUNC0(atpx->handle, ATPX_FUNCTION_VERIFY_INTERFACE, NULL);
	if (!info)
		return -EIO;

	FUNC4(&output, 0, sizeof(output));

	size = *(u16 *) info->buffer.pointer;
	if (size < 8) {
		FUNC6("ATPX buffer is too small: %zu\n", size);
		err = -EINVAL;
		goto out;
	}
	size = FUNC5(sizeof(output), size);

	FUNC3(&output, info->buffer.pointer, size);

	/* TODO: check version? */
	FUNC6("ATPX version %u, functions 0x%08x\n",
	       output.version, output.function_bits);

	FUNC1(&atpx->functions, output.function_bits);

out:
	FUNC2(info);
	return err;
}