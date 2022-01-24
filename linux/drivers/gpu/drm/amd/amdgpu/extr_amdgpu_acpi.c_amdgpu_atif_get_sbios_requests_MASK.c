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
struct amdgpu_atif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATIF_FUNCTION_GET_SYSTEM_BIOS_REQUESTS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 union acpi_object* FUNC1 (struct amdgpu_atif*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct atif_sbios_requests*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct atif_sbios_requests*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC6 (int,size_t) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_atif *atif,
					  struct atif_sbios_requests *req)
{
	union acpi_object *info;
	size_t size;
	int count = 0;

	info = FUNC1(atif, ATIF_FUNCTION_GET_SYSTEM_BIOS_REQUESTS,
				NULL);
	if (!info)
		return -EIO;

	size = *(u16 *)info->buffer.pointer;
	if (size < 0xd) {
		count = -EINVAL;
		goto out;
	}
	FUNC5(req, 0, sizeof(*req));

	size = FUNC6(sizeof(*req), size);
	FUNC4(req, info->buffer.pointer, size);
	FUNC0("SBIOS pending requests: %#x\n", req->pending);

	count = FUNC2(req->pending);

out:
	FUNC3(info);
	return count;
}