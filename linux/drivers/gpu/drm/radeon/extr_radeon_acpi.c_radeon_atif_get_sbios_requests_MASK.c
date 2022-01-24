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
struct atif_sbios_requests {int /*<<< orphan*/  pending; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ATIF_FUNCTION_GET_SYSTEM_BIOS_REQUESTS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct atif_sbios_requests*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct atif_sbios_requests*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC5 (int,size_t) ; 
 union acpi_object* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(acpi_handle handle,
		struct atif_sbios_requests *req)
{
	union acpi_object *info;
	size_t size;
	int count = 0;

	info = FUNC6(handle, ATIF_FUNCTION_GET_SYSTEM_BIOS_REQUESTS, NULL);
	if (!info)
		return -EIO;

	size = *(u16 *)info->buffer.pointer;
	if (size < 0xd) {
		count = -EINVAL;
		goto out;
	}
	FUNC4(req, 0, sizeof(*req));

	size = FUNC5(sizeof(*req), size);
	FUNC3(req, info->buffer.pointer, size);
	FUNC0("SBIOS pending requests: %#x\n", req->pending);

	count = FUNC1(req->pending);

out:
	FUNC2(info);
	return count;
}