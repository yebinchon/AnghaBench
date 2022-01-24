#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ tx_block; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct slimpro_i2c_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  rd_complete; TYPE_2__ mbox_client; int /*<<< orphan*/  dma_buffer; TYPE_1__ adapter; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SLIMPRO_IIC_BUS ; 
 int FUNC0 (int) ; 
 int SLIMPRO_IIC_ENCODE_FLAG_BUFADDR ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  SLIMPRO_IIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct slimpro_i2c_dev*,int*,int*) ; 

__attribute__((used)) static int FUNC10(struct slimpro_i2c_dev *ctx, u32 chip,
			     u32 addr, u32 addrlen, u32 protocol, u32 writelen,
			     void *data)
{
	dma_addr_t paddr;
	u32 msg[3];
	int rc;

	FUNC7(ctx->dma_buffer, data, writelen);
	paddr = FUNC4(ctx->dev, ctx->dma_buffer, writelen,
			       DMA_TO_DEVICE);
	if (FUNC5(ctx->dev, paddr)) {
		FUNC3(&ctx->adapter.dev, "Error in mapping dma buffer %p\n",
			ctx->dma_buffer);
		return -ENOMEM;
	}

	msg[0] = FUNC1(SLIMPRO_IIC_BUS, chip, SLIMPRO_IIC_WRITE,
					protocol, addrlen, writelen);
	msg[1] = SLIMPRO_IIC_ENCODE_FLAG_BUFADDR |
		 FUNC2(paddr) |
		 FUNC0(addr);
	msg[2] = (u32)paddr;

	if (ctx->mbox_client.tx_block)
		FUNC8(&ctx->rd_complete);

	rc = FUNC9(ctx, msg, msg);

	FUNC6(ctx->dev, paddr, writelen, DMA_TO_DEVICE);
	return rc;
}