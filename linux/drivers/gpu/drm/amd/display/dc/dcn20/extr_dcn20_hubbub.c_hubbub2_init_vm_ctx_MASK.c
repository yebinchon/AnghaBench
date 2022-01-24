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
struct hubbub {int dummy; } ;
struct dcn_vmid_page_table_config {int page_table_start_addr; int page_table_end_addr; int /*<<< orphan*/  page_table_base_addr; int /*<<< orphan*/  block_size; int /*<<< orphan*/  depth; } ;
struct dcn_hubbub_virt_addr_config {int page_table_start_addr; int page_table_end_addr; int /*<<< orphan*/  page_table_base_addr; int /*<<< orphan*/  page_table_block_size; int /*<<< orphan*/  page_table_depth; } ;
struct dcn20_hubbub {int /*<<< orphan*/ * vmid; } ;

/* Variables and functions */
 struct dcn20_hubbub* FUNC0 (struct hubbub*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct dcn_vmid_page_table_config*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct hubbub *hubbub,
		struct dcn_hubbub_virt_addr_config *va_config,
		int vmid)
{
	struct dcn20_hubbub *hubbub1 = FUNC0(hubbub);
	struct dcn_vmid_page_table_config virt_config;

	virt_config.page_table_start_addr = va_config->page_table_start_addr >> 12;
	virt_config.page_table_end_addr = va_config->page_table_end_addr >> 12;
	virt_config.depth = FUNC3(va_config->page_table_depth);
	virt_config.block_size = FUNC2(va_config->page_table_block_size);
	virt_config.page_table_base_addr = va_config->page_table_base_addr;

	FUNC1(&hubbub1->vmid[vmid], &virt_config);
}