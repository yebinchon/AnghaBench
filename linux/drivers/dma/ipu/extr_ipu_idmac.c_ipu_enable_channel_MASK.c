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
typedef  unsigned long uint32_t ;
struct ipu {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int chan_id; } ;
struct idmac_channel {int /*<<< orphan*/  status; scalar_t__ active_buffer; TYPE_1__ dma_chan; } ;
struct idmac {int dummy; } ;
typedef  enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;

/* Variables and functions */
 int /*<<< orphan*/  IDMAC_CHA_EN ; 
#define  IDMAC_IC_7 130 
#define  IDMAC_SDC_0 129 
#define  IDMAC_SDC_1 128 
 int /*<<< orphan*/  IPU_CHANNEL_ENABLED ; 
 int /*<<< orphan*/  IPU_CHA_CUR_BUF ; 
 unsigned long FUNC0 (struct ipu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipu*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ipu* FUNC7 (struct idmac*) ; 

__attribute__((used)) static int FUNC8(struct idmac *idmac, struct idmac_channel *ichan)
{
	struct ipu *ipu = FUNC7(idmac);
	enum ipu_channel channel = ichan->dma_chan.chan_id;
	uint32_t reg;
	unsigned long flags;

	FUNC5(&ipu->lock, flags);

	/* Reset to buffer 0 */
	FUNC2(ipu, 1UL << channel, IPU_CHA_CUR_BUF);
	ichan->active_buffer = 0;
	ichan->status = IPU_CHANNEL_ENABLED;

	switch (channel) {
	case IDMAC_SDC_0:
	case IDMAC_SDC_1:
	case IDMAC_IC_7:
		FUNC3(ipu, channel, true);
	default:
		break;
	}

	reg = FUNC0(ipu, IDMAC_CHA_EN);

	FUNC1(ipu, reg | (1UL << channel), IDMAC_CHA_EN);

	FUNC4(ipu, channel);

	FUNC6(&ipu->lock, flags);
	return 0;
}