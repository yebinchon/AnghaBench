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
struct stm32_mdma_device {int dummy; } ;
struct stm32_mdma_chan_config {int transfer_config; int /*<<< orphan*/  request; int /*<<< orphan*/  priority_level; } ;
struct TYPE_2__ {int src_addr_width; int dst_addr_width; int src_maxburst; int dst_maxburst; int /*<<< orphan*/  src_addr; int /*<<< orphan*/  dst_addr; } ;
struct stm32_mdma_chan {int mem_burst; int mem_width; int /*<<< orphan*/  id; TYPE_1__ dma_config; struct stm32_mdma_chan_config chan_config; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef  enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
#define  DMA_DEV_TO_MEM 129 
#define  DMA_MEM_TO_DEV 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int STM32_MDMA_CCR_BEX ; 
 int STM32_MDMA_CCR_HEX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int STM32_MDMA_CCR_PL_MASK ; 
 int STM32_MDMA_CCR_SWRQ ; 
 int STM32_MDMA_CCR_WEX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STM32_MDMA_CTBR_DBUS ; 
 int /*<<< orphan*/  STM32_MDMA_CTBR_SBUS ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int STM32_MDMA_CTBR_TSEL_MASK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int STM32_MDMA_CTCR_CFG_MASK ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int STM32_MDMA_CTCR_DBURST_MASK ; 
 int FUNC8 (int) ; 
 int STM32_MDMA_CTCR_DINCOS_MASK ; 
 int FUNC9 (int) ; 
 int STM32_MDMA_CTCR_DSIZE_MASK ; 
 int FUNC10 (int) ; 
 int STM32_MDMA_CTCR_LEN2_MSK ; 
 int STM32_MDMA_CTCR_PKE ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int STM32_MDMA_CTCR_SBURST_MASK ; 
 int FUNC12 (int) ; 
 int STM32_MDMA_CTCR_SINCOS_MASK ; 
 int FUNC13 (int) ; 
 int STM32_MDMA_CTCR_SSIZE_MASK ; 
 int STM32_MDMA_CTCR_SWRM ; 
 int FUNC14 (int) ; 
 int STM32_MDMA_MAX_BUF_LEN ; 
 int STM32_MDMA_MAX_BURST ; 
 int /*<<< orphan*/  FUNC15 (struct stm32_mdma_chan*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 (int,int,int,int) ; 
 struct stm32_mdma_device* FUNC20 (struct stm32_mdma_chan*) ; 
 int FUNC21 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC22 (struct stm32_mdma_chan*,int) ; 
 int FUNC23 (struct stm32_mdma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct stm32_mdma_device*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct stm32_mdma_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct stm32_mdma_chan *chan,
				     enum dma_transfer_direction direction,
				     u32 *mdma_ccr, u32 *mdma_ctcr,
				     u32 *mdma_ctbr, dma_addr_t addr,
				     u32 buf_len)
{
	struct stm32_mdma_device *dmadev = FUNC20(chan);
	struct stm32_mdma_chan_config *chan_config = &chan->chan_config;
	enum dma_slave_buswidth src_addr_width, dst_addr_width;
	phys_addr_t src_addr, dst_addr;
	int src_bus_width, dst_bus_width;
	u32 src_maxburst, dst_maxburst, src_best_burst, dst_best_burst;
	u32 ccr, ctcr, ctbr, tlen;

	src_addr_width = chan->dma_config.src_addr_width;
	dst_addr_width = chan->dma_config.dst_addr_width;
	src_maxburst = chan->dma_config.src_maxburst;
	dst_maxburst = chan->dma_config.dst_maxburst;

	ccr = FUNC23(dmadev, FUNC0(chan->id));
	ctcr = FUNC23(dmadev, FUNC6(chan->id));
	ctbr = FUNC23(dmadev, FUNC4(chan->id));

	/* Enable HW request mode */
	ctcr &= ~STM32_MDMA_CTCR_SWRM;

	/* Set DINC, SINC, DINCOS, SINCOS, TRGM and TLEN retrieve from DT */
	ctcr &= ~STM32_MDMA_CTCR_CFG_MASK;
	ctcr |= chan_config->transfer_config & STM32_MDMA_CTCR_CFG_MASK;

	/*
	 * For buffer transfer length (TLEN) we have to set
	 * the number of bytes - 1 in CTCR register
	 */
	tlen = FUNC10(ctcr);
	ctcr &= ~STM32_MDMA_CTCR_LEN2_MSK;
	ctcr |= FUNC14((tlen - 1));

	/* Disable Pack Enable */
	ctcr &= ~STM32_MDMA_CTCR_PKE;

	/* Check burst size constraints */
	if (src_maxburst * src_addr_width > STM32_MDMA_MAX_BURST ||
	    dst_maxburst * dst_addr_width > STM32_MDMA_MAX_BURST) {
		FUNC16(FUNC15(chan),
			"burst size * bus width higher than %d bytes\n",
			STM32_MDMA_MAX_BURST);
		return -EINVAL;
	}

	if ((!FUNC18(src_maxburst) && src_maxburst > 0) ||
	    (!FUNC18(dst_maxburst) && dst_maxburst > 0)) {
		FUNC16(FUNC15(chan), "burst size must be a power of 2\n");
		return -EINVAL;
	}

	/*
	 * Configure channel control:
	 * - Clear SW request as in this case this is a HW one
	 * - Clear WEX, HEX and BEX bits
	 * - Set priority level
	 */
	ccr &= ~(STM32_MDMA_CCR_SWRQ | STM32_MDMA_CCR_WEX | STM32_MDMA_CCR_HEX |
		 STM32_MDMA_CCR_BEX | STM32_MDMA_CCR_PL_MASK);
	ccr |= FUNC1(chan_config->priority_level);

	/* Configure Trigger selection */
	ctbr &= ~STM32_MDMA_CTBR_TSEL_MASK;
	ctbr |= FUNC5(chan_config->request);

	switch (direction) {
	case DMA_MEM_TO_DEV:
		dst_addr = chan->dma_config.dst_addr;

		/* Set device data size */
		dst_bus_width = FUNC22(chan, dst_addr_width);
		if (dst_bus_width < 0)
			return dst_bus_width;
		ctcr &= ~STM32_MDMA_CTCR_DSIZE_MASK;
		ctcr |= FUNC9(dst_bus_width);

		/* Set device burst value */
		dst_best_burst = FUNC19(buf_len, tlen,
							   dst_maxburst,
							   dst_addr_width);
		chan->mem_burst = dst_best_burst;
		ctcr &= ~STM32_MDMA_CTCR_DBURST_MASK;
		ctcr |= FUNC7((FUNC17(dst_best_burst)));

		/* Set memory data size */
		src_addr_width = FUNC21(addr, buf_len, tlen);
		chan->mem_width = src_addr_width;
		src_bus_width = FUNC22(chan, src_addr_width);
		if (src_bus_width < 0)
			return src_bus_width;
		ctcr &= ~STM32_MDMA_CTCR_SSIZE_MASK |
			STM32_MDMA_CTCR_SINCOS_MASK;
		ctcr |= FUNC13(src_bus_width) |
			FUNC12(src_bus_width);

		/* Set memory burst value */
		src_maxburst = STM32_MDMA_MAX_BUF_LEN / src_addr_width;
		src_best_burst = FUNC19(buf_len, tlen,
							   src_maxburst,
							   src_addr_width);
		chan->mem_burst = src_best_burst;
		ctcr &= ~STM32_MDMA_CTCR_SBURST_MASK;
		ctcr |= FUNC11((FUNC17(src_best_burst)));

		/* Select bus */
		FUNC24(dmadev, &ctbr, STM32_MDMA_CTBR_DBUS,
				   dst_addr);

		if (dst_bus_width != src_bus_width)
			ctcr |= STM32_MDMA_CTCR_PKE;

		/* Set destination address */
		FUNC25(dmadev, FUNC2(chan->id), dst_addr);
		break;

	case DMA_DEV_TO_MEM:
		src_addr = chan->dma_config.src_addr;

		/* Set device data size */
		src_bus_width = FUNC22(chan, src_addr_width);
		if (src_bus_width < 0)
			return src_bus_width;
		ctcr &= ~STM32_MDMA_CTCR_SSIZE_MASK;
		ctcr |= FUNC13(src_bus_width);

		/* Set device burst value */
		src_best_burst = FUNC19(buf_len, tlen,
							   src_maxburst,
							   src_addr_width);
		ctcr &= ~STM32_MDMA_CTCR_SBURST_MASK;
		ctcr |= FUNC11((FUNC17(src_best_burst)));

		/* Set memory data size */
		dst_addr_width = FUNC21(addr, buf_len, tlen);
		chan->mem_width = dst_addr_width;
		dst_bus_width = FUNC22(chan, dst_addr_width);
		if (dst_bus_width < 0)
			return dst_bus_width;
		ctcr &= ~(STM32_MDMA_CTCR_DSIZE_MASK |
			STM32_MDMA_CTCR_DINCOS_MASK);
		ctcr |= FUNC9(dst_bus_width) |
			FUNC8(dst_bus_width);

		/* Set memory burst value */
		dst_maxburst = STM32_MDMA_MAX_BUF_LEN / dst_addr_width;
		dst_best_burst = FUNC19(buf_len, tlen,
							   dst_maxburst,
							   dst_addr_width);
		ctcr &= ~STM32_MDMA_CTCR_DBURST_MASK;
		ctcr |= FUNC7((FUNC17(dst_best_burst)));

		/* Select bus */
		FUNC24(dmadev, &ctbr, STM32_MDMA_CTBR_SBUS,
				   src_addr);

		if (dst_bus_width != src_bus_width)
			ctcr |= STM32_MDMA_CTCR_PKE;

		/* Set source address */
		FUNC25(dmadev, FUNC3(chan->id), src_addr);
		break;

	default:
		FUNC16(FUNC15(chan), "Dma direction is not supported\n");
		return -EINVAL;
	}

	*mdma_ccr = ccr;
	*mdma_ctcr = ctcr;
	*mdma_ctbr = ctbr;

	return 0;
}