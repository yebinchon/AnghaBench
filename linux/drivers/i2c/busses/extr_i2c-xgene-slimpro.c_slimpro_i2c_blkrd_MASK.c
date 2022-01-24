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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct slimpro_i2c_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_buffer; TYPE_1__ adapter; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SLIMPRO_IIC_BUS ; 
 int FUNC0 (int) ; 
 int SLIMPRO_IIC_ENCODE_FLAG_BUFADDR ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  SLIMPRO_IIC_READ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct slimpro_i2c_dev*,int*,int*) ; 

__attribute__((used)) static int FUNC10(struct slimpro_i2c_dev *ctx, u32 chip, u32 addr,
			     u32 addrlen, u32 protocol, u32 readlen,
			     u32 with_data_len, void *data)
{
	dma_addr_t paddr;
	u32 msg[3];
	int rc;

	paddr = FUNC5(ctx->dev, ctx->dma_buffer, readlen, DMA_FROM_DEVICE);
	if (FUNC6(ctx->dev, paddr)) {
		FUNC4(&ctx->adapter.dev, "Error in mapping dma buffer %p\n",
			ctx->dma_buffer);
		return -ENOMEM;
	}

	msg[0] = FUNC2(SLIMPRO_IIC_BUS, chip, SLIMPRO_IIC_READ,
					protocol, addrlen, readlen);
	msg[1] = SLIMPRO_IIC_ENCODE_FLAG_BUFADDR |
		 FUNC1(with_data_len) |
		 FUNC3(paddr) |
		 FUNC0(addr);
	msg[2] = (u32)paddr;

	rc = FUNC9(ctx, msg, msg);

	/* Copy to destination */
	FUNC8(data, ctx->dma_buffer, readlen);

	FUNC7(ctx->dev, paddr, readlen, DMA_FROM_DEVICE);
	return rc;
}