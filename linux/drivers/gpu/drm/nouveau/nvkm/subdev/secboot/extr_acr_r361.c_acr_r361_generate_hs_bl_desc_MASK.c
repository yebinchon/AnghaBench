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
typedef  scalar_t__ u64 ;
struct hsf_load_header {int /*<<< orphan*/  data_size; scalar_t__ data_dma_base; int /*<<< orphan*/  non_sec_code_size; int /*<<< orphan*/  non_sec_code_off; } ;
struct acr_r361_flcn_bl_desc {int /*<<< orphan*/  data_size; void* data_dma_base; scalar_t__ code_entry_point; int /*<<< orphan*/  sec_code_size; int /*<<< orphan*/  sec_code_off; int /*<<< orphan*/  non_sec_code_size; int /*<<< orphan*/  non_sec_code_off; void* code_dma_base; int /*<<< orphan*/  ctx_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALCON_DMAIDX_VIRT ; 
 int /*<<< orphan*/  FUNC0 (struct hsf_load_header const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hsf_load_header const*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (scalar_t__) ; 

void
FUNC3(const struct hsf_load_header *hdr, void *_bl_desc,
			    u64 offset)
{
	struct acr_r361_flcn_bl_desc *bl_desc = _bl_desc;

	bl_desc->ctx_dma = FALCON_DMAIDX_VIRT;
	bl_desc->code_dma_base = FUNC2(offset);
	bl_desc->non_sec_code_off = hdr->non_sec_code_off;
	bl_desc->non_sec_code_size = hdr->non_sec_code_size;
	bl_desc->sec_code_off = FUNC0(hdr, 0);
	bl_desc->sec_code_size = FUNC1(hdr, 0);
	bl_desc->code_entry_point = 0;
	bl_desc->data_dma_base = FUNC2(offset + hdr->data_dma_base);
	bl_desc->data_size = hdr->data_size;
}