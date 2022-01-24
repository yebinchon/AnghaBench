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
struct dcn_vmid_page_table_config {int page_table_start_addr; int page_table_end_addr; int page_table_base_addr; int /*<<< orphan*/  block_size; int /*<<< orphan*/  depth; } ;
struct dcn20_vmid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTL ; 
 int /*<<< orphan*/  PAGE_TABLE_BASE_ADDR_HI32 ; 
 int /*<<< orphan*/  PAGE_TABLE_BASE_ADDR_LO32 ; 
 int /*<<< orphan*/  PAGE_TABLE_END_ADDR_HI32 ; 
 int /*<<< orphan*/  PAGE_TABLE_END_ADDR_LO32 ; 
 int /*<<< orphan*/  PAGE_TABLE_START_ADDR_HI32 ; 
 int /*<<< orphan*/  PAGE_TABLE_START_ADDR_LO32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_CONTEXT0_END_LOGICAL_PAGE_NUMBER_HI4 ; 
 int /*<<< orphan*/  VM_CONTEXT0_END_LOGICAL_PAGE_NUMBER_LO32 ; 
 int /*<<< orphan*/  VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_HI32 ; 
 int /*<<< orphan*/  VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_LO32 ; 
 int /*<<< orphan*/  VM_CONTEXT0_PAGE_TABLE_BLOCK_SIZE ; 
 int /*<<< orphan*/  VM_CONTEXT0_PAGE_TABLE_DEPTH ; 
 int /*<<< orphan*/  VM_CONTEXT0_START_LOGICAL_PAGE_NUMBER_HI4 ; 
 int /*<<< orphan*/  VM_CONTEXT0_START_LOGICAL_PAGE_NUMBER_LO32 ; 
 int /*<<< orphan*/  FUNC2 (struct dcn20_vmid*) ; 

void FUNC3(struct dcn20_vmid *vmid, const struct dcn_vmid_page_table_config *config)
{
	FUNC0(PAGE_TABLE_START_ADDR_HI32, 0,
			VM_CONTEXT0_START_LOGICAL_PAGE_NUMBER_HI4, (config->page_table_start_addr >> 32) & 0xF);
	FUNC0(PAGE_TABLE_START_ADDR_LO32, 0,
			VM_CONTEXT0_START_LOGICAL_PAGE_NUMBER_LO32, config->page_table_start_addr & 0xFFFFFFFF);

	FUNC0(PAGE_TABLE_END_ADDR_HI32, 0,
			VM_CONTEXT0_END_LOGICAL_PAGE_NUMBER_HI4, (config->page_table_end_addr >> 32) & 0xF);
	FUNC0(PAGE_TABLE_END_ADDR_LO32, 0,
			VM_CONTEXT0_END_LOGICAL_PAGE_NUMBER_LO32, config->page_table_end_addr & 0xFFFFFFFF);

	FUNC1(CNTL, 0,
			VM_CONTEXT0_PAGE_TABLE_DEPTH, config->depth,
			VM_CONTEXT0_PAGE_TABLE_BLOCK_SIZE, config->block_size);

	FUNC0(PAGE_TABLE_BASE_ADDR_HI32, 0,
			VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_HI32, (config->page_table_base_addr >> 32) & 0xFFFFFFFF);
	/* Note: per hardware spec PAGE_TABLE_BASE_ADDR_LO32 must be programmed last in sequence */
	FUNC0(PAGE_TABLE_BASE_ADDR_LO32, 0,
			VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_LO32, config->page_table_base_addr & 0xFFFFFFFF);

	FUNC2(vmid);
}