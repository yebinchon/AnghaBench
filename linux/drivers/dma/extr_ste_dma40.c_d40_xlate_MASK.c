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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {void* big_endian; } ;
struct TYPE_3__ {void* big_endian; } ;
struct stedma40_chan_cfg {int use_fixed_channel; int high_priority; int /*<<< orphan*/  phy_channel; TYPE_2__ src_info; int /*<<< orphan*/  dir; TYPE_1__ dst_info; int /*<<< orphan*/  mode; int /*<<< orphan*/  dev_type; } ;
struct of_phandle_args {int /*<<< orphan*/ * args; } ;
struct of_dma {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int /*<<< orphan*/  STEDMA40_MODE_LOGICAL ; 
 int /*<<< orphan*/  STEDMA40_MODE_PHYSICAL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct dma_chan* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct stedma40_chan_cfg*) ; 
 int /*<<< orphan*/  FUNC8 (struct stedma40_chan_cfg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stedma40_filter ; 

__attribute__((used)) static struct dma_chan *FUNC9(struct of_phandle_args *dma_spec,
				  struct of_dma *ofdma)
{
	struct stedma40_chan_cfg cfg;
	dma_cap_mask_t cap;
	u32 flags;

	FUNC8(&cfg, 0, sizeof(struct stedma40_chan_cfg));

	FUNC6(cap);
	FUNC5(DMA_SLAVE, cap);

	cfg.dev_type = dma_spec->args[0];
	flags = dma_spec->args[2];

	switch (FUNC4(flags)) {
	case 0: cfg.mode = STEDMA40_MODE_LOGICAL; break;
	case 1: cfg.mode = STEDMA40_MODE_PHYSICAL; break;
	}

	switch (FUNC1(flags)) {
	case 0:
		cfg.dir = DMA_MEM_TO_DEV;
		cfg.dst_info.big_endian = FUNC0(flags);
		break;
	case 1:
		cfg.dir = DMA_DEV_TO_MEM;
		cfg.src_info.big_endian = FUNC0(flags);
		break;
	}

	if (FUNC2(flags)) {
		cfg.phy_channel = dma_spec->args[1];
		cfg.use_fixed_channel = true;
	}

	if (FUNC3(flags))
		cfg.high_priority = true;

	return FUNC7(cap, stedma40_filter, &cfg);
}