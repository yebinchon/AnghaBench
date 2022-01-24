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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_ras_eeprom_table_header {int /*<<< orphan*/  checksum; int /*<<< orphan*/  tbl_size; int /*<<< orphan*/  first_rec_offset; int /*<<< orphan*/  version; int /*<<< orphan*/  header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct amdgpu_ras_eeprom_table_header *hdr,
					  unsigned char *buff)
{
	uint32_t *pp = (uint32_t *) buff;

	pp[0] = FUNC0(hdr->header);
	pp[1] = FUNC0(hdr->version);
	pp[2] = FUNC0(hdr->first_rec_offset);
	pp[3] = FUNC0(hdr->tbl_size);
	pp[4] = FUNC0(hdr->checksum);
}