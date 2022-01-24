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
struct common_firmware_header {int /*<<< orphan*/  crc32; int /*<<< orphan*/  ucode_array_offset_bytes; int /*<<< orphan*/  ucode_size_bytes; int /*<<< orphan*/  ucode_version; int /*<<< orphan*/  ip_version_minor; int /*<<< orphan*/  ip_version_major; int /*<<< orphan*/  header_version_minor; int /*<<< orphan*/  header_version_major; int /*<<< orphan*/  header_size_bytes; int /*<<< orphan*/  size_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct common_firmware_header *hdr)
{
	FUNC0("size_bytes: %u\n", FUNC2(hdr->size_bytes));
	FUNC0("header_size_bytes: %u\n", FUNC2(hdr->header_size_bytes));
	FUNC0("header_version_major: %u\n", FUNC1(hdr->header_version_major));
	FUNC0("header_version_minor: %u\n", FUNC1(hdr->header_version_minor));
	FUNC0("ip_version_major: %u\n", FUNC1(hdr->ip_version_major));
	FUNC0("ip_version_minor: %u\n", FUNC1(hdr->ip_version_minor));
	FUNC0("ucode_version: 0x%08x\n", FUNC2(hdr->ucode_version));
	FUNC0("ucode_size_bytes: %u\n", FUNC2(hdr->ucode_size_bytes));
	FUNC0("ucode_array_offset_bytes: %u\n",
		  FUNC2(hdr->ucode_array_offset_bytes));
	FUNC0("crc32: 0x%08x\n", FUNC2(hdr->crc32));
}