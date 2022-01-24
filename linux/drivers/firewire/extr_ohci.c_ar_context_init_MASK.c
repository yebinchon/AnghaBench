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
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct fw_ohci {scalar_t__ misc_buffer_bus; struct descriptor* misc_buffer; TYPE_1__ card; } ;
struct descriptor {void* branch_address; void* data_address; void* control; void* req_count; } ;
struct ar_context {scalar_t__ descriptors_bus; struct descriptor* descriptors; int /*<<< orphan*/  buffer; struct page** pages; int /*<<< orphan*/  tasklet; struct fw_ohci* ohci; int /*<<< orphan*/  regs; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page**) ; 
 int AR_BUFFERS ; 
 int AR_WRAPAROUND_PAGES ; 
 int DESCRIPTOR_BRANCH_ALWAYS ; 
 int DESCRIPTOR_INPUT_MORE ; 
 int DESCRIPTOR_STATUS ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  VM_MAP ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct ar_context*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct ar_context*) ; 
 int /*<<< orphan*/  ar_context_tasklet ; 
 int FUNC5 (unsigned int) ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct page**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct ar_context *ctx, struct fw_ohci *ohci,
			   unsigned int descriptors_offset, u32 regs)
{
	unsigned int i;
	dma_addr_t dma_addr;
	struct page *pages[AR_BUFFERS + AR_WRAPAROUND_PAGES];
	struct descriptor *d;

	ctx->regs        = regs;
	ctx->ohci        = ohci;
	FUNC11(&ctx->tasklet, ar_context_tasklet, (unsigned long)ctx);

	for (i = 0; i < AR_BUFFERS; i++) {
		ctx->pages[i] = FUNC2(GFP_KERNEL | GFP_DMA32);
		if (!ctx->pages[i])
			goto out_of_memory;
		dma_addr = FUNC8(ohci->card.device, ctx->pages[i],
					0, PAGE_SIZE, DMA_FROM_DEVICE);
		if (FUNC9(ohci->card.device, dma_addr)) {
			FUNC1(ctx->pages[i]);
			ctx->pages[i] = NULL;
			goto out_of_memory;
		}
		FUNC10(ctx->pages[i], dma_addr);
	}

	for (i = 0; i < AR_BUFFERS; i++)
		pages[i]              = ctx->pages[i];
	for (i = 0; i < AR_WRAPAROUND_PAGES; i++)
		pages[AR_BUFFERS + i] = ctx->pages[i];
	ctx->buffer = FUNC12(pages, FUNC0(pages), VM_MAP, PAGE_KERNEL);
	if (!ctx->buffer)
		goto out_of_memory;

	ctx->descriptors     = ohci->misc_buffer     + descriptors_offset;
	ctx->descriptors_bus = ohci->misc_buffer_bus + descriptors_offset;

	for (i = 0; i < AR_BUFFERS; i++) {
		d = &ctx->descriptors[i];
		d->req_count      = FUNC6(PAGE_SIZE);
		d->control        = FUNC6(DESCRIPTOR_INPUT_MORE |
						DESCRIPTOR_STATUS |
						DESCRIPTOR_BRANCH_ALWAYS);
		d->data_address   = FUNC7(FUNC3(ctx, i));
		d->branch_address = FUNC7(ctx->descriptors_bus +
			FUNC5(i) * sizeof(struct descriptor));
	}

	return 0;

out_of_memory:
	FUNC4(ctx);

	return -ENOMEM;
}