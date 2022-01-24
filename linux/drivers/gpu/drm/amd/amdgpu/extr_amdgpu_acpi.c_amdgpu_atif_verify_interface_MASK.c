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
struct atif_verify_interface {int /*<<< orphan*/  function_bits; int /*<<< orphan*/  notification_mask; int /*<<< orphan*/  version; } ;
struct amdgpu_atif {int /*<<< orphan*/  functions; int /*<<< orphan*/  notifications; } ;
typedef  int /*<<< orphan*/  output ;

/* Variables and functions */
 int /*<<< orphan*/  ATIF_FUNCTION_VERIFY_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int EINVAL ; 
 int EIO ; 
 union acpi_object* FUNC2 (struct amdgpu_atif*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct atif_verify_interface*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct atif_verify_interface*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC8 (int,size_t) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_atif *atif)
{
	union acpi_object *info;
	struct atif_verify_interface output;
	size_t size;
	int err = 0;

	info = FUNC2(atif, ATIF_FUNCTION_VERIFY_INTERFACE, NULL);
	if (!info)
		return -EIO;

	FUNC7(&output, 0, sizeof(output));

	size = *(u16 *) info->buffer.pointer;
	if (size < 12) {
		FUNC1("ATIF buffer is too small: %zu\n", size);
		err = -EINVAL;
		goto out;
	}
	size = FUNC8(sizeof(output), size);

	FUNC6(&output, info->buffer.pointer, size);

	/* TODO: check version? */
	FUNC0("ATIF version %u\n", output.version);

	FUNC4(&atif->notifications, output.notification_mask);
	FUNC3(&atif->functions, output.function_bits);

out:
	FUNC5(info);
	return err;
}