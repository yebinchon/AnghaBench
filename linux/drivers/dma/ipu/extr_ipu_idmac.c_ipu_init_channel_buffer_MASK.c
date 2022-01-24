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
typedef  union chan_param_mem {int dummy; } chan_param_mem ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct ipu {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int chan_id; int /*<<< orphan*/  device; } ;
struct idmac_channel {int /*<<< orphan*/  status; TYPE_1__ dma_chan; } ;
struct idmac {int dummy; } ;
typedef  enum pixel_fmt { ____Placeholder_pixel_fmt } pixel_fmt ;
typedef  enum ipu_rotate_mode { ____Placeholder_ipu_rotate_mode } ipu_rotate_mode ;
typedef  enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int IDMAC_IC_13 ; 
 int /*<<< orphan*/  IPU_CHANNEL_READY ; 
 int /*<<< orphan*/  IPU_CHA_DB_MODE_SEL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ipu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (union chan_param_mem*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union chan_param_mem*,int) ; 
 int /*<<< orphan*/  FUNC7 (union chan_param_mem*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct idmac* FUNC11 (int /*<<< orphan*/ ) ; 
 struct ipu* FUNC12 (struct idmac*) ; 

__attribute__((used)) static int FUNC13(struct idmac_channel *ichan,
				   enum pixel_fmt pixel_fmt,
				   uint16_t width, uint16_t height,
				   uint32_t stride,
				   enum ipu_rotate_mode rot_mode,
				   dma_addr_t phyaddr_0, dma_addr_t phyaddr_1)
{
	enum ipu_channel channel = ichan->dma_chan.chan_id;
	struct idmac *idmac = FUNC11(ichan->dma_chan.device);
	struct ipu *ipu = FUNC12(idmac);
	union chan_param_mem params = {};
	unsigned long flags;
	uint32_t reg;
	uint32_t stride_bytes;

	stride_bytes = stride * FUNC0(pixel_fmt);

	if (stride_bytes % 4) {
		FUNC1(ipu->dev,
			"Stride length must be 32-bit aligned, stride = %d, bytes = %d\n",
			stride, stride_bytes);
		return -EINVAL;
	}

	/* IC channel's stride must be a multiple of 8 pixels */
	if ((channel <= IDMAC_IC_13) && (stride % 8)) {
		FUNC1(ipu->dev, "Stride must be 8 pixel multiple\n");
		return -EINVAL;
	}

	/* Build parameter memory data for DMA channel */
	FUNC7(&params, pixel_fmt, width, height, stride_bytes);
	FUNC5(&params, phyaddr_0, phyaddr_1);
	FUNC6(&params, rot_mode);

	FUNC9(&ipu->lock, flags);

	FUNC8(FUNC2(channel), (uint32_t *)&params, 10);

	reg = FUNC3(ipu, IPU_CHA_DB_MODE_SEL);

	if (phyaddr_1)
		reg |= 1UL << channel;
	else
		reg &= ~(1UL << channel);

	FUNC4(ipu, reg, IPU_CHA_DB_MODE_SEL);

	ichan->status = IPU_CHANNEL_READY;

	FUNC10(&ipu->lock, flags);

	return 0;
}