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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {void* flags; void* type; } ;
struct r5l_payload_data_parity {void** checksum; int /*<<< orphan*/  location; void* size; TYPE_1__ header; } ;
struct r5l_log {struct r5l_io_unit* current_io; } ;
struct r5l_io_unit {int meta_offset; int /*<<< orphan*/  meta_page; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct r5l_payload_data_parity* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct r5l_log *log, u16 type,
				    sector_t location,
				    u32 checksum1, u32 checksum2,
				    bool checksum2_valid)
{
	struct r5l_io_unit *io = log->current_io;
	struct r5l_payload_data_parity *payload;

	payload = FUNC3(io->meta_page) + io->meta_offset;
	payload->header.type = FUNC0(type);
	payload->header.flags = FUNC0(0);
	payload->size = FUNC1((1 + !!checksum2_valid) <<
				    (PAGE_SHIFT - 9));
	payload->location = FUNC2(location);
	payload->checksum[0] = FUNC1(checksum1);
	if (checksum2_valid)
		payload->checksum[1] = FUNC1(checksum2);

	io->meta_offset += sizeof(struct r5l_payload_data_parity) +
		sizeof(__le32) * (1 + !!checksum2_valid);
}