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
typedef  scalar_t__ u32 ;
struct output {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mapped; } ;
struct host1x_cdma {TYPE_1__ push_buffer; } ;
struct host1x_channel {struct host1x_cdma cdma; int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
struct host1x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST1X_CHANNEL_CHANNELSTAT ; 
 int /*<<< orphan*/  HOST1X_CHANNEL_CMDP_CLASS ; 
 int /*<<< orphan*/  HOST1X_CHANNEL_CMDP_OFFSET ; 
 int /*<<< orphan*/  HOST1X_CHANNEL_DMACTRL ; 
 scalar_t__ HOST1X_CHANNEL_DMACTRL_DMASTOP ; 
 int /*<<< orphan*/  HOST1X_CHANNEL_DMAGET ; 
 int /*<<< orphan*/  HOST1X_CHANNEL_DMAPUT ; 
 scalar_t__ HOST1X_CLASS_HOST1X ; 
 scalar_t__ HOST1X_UCLASS_WAIT_SYNCPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct host1x_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct output*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct output*,struct host1x_cdma*) ; 

__attribute__((used)) static void FUNC4(struct host1x *host,
					   struct host1x_channel *ch,
					   struct output *o)
{
	struct host1x_cdma *cdma = &ch->cdma;
	u32 dmaput, dmaget, dmactrl;
	u32 offset, class;
	u32 ch_stat;

	dmaput = FUNC1(ch, HOST1X_CHANNEL_DMAPUT);
	dmaget = FUNC1(ch, HOST1X_CHANNEL_DMAGET);
	dmactrl = FUNC1(ch, HOST1X_CHANNEL_DMACTRL);
	offset = FUNC1(ch, HOST1X_CHANNEL_CMDP_OFFSET);
	class = FUNC1(ch, HOST1X_CHANNEL_CMDP_CLASS);
	ch_stat = FUNC1(ch, HOST1X_CHANNEL_CHANNELSTAT);

	FUNC2(o, "%u-%s: ", ch->id, FUNC0(ch->dev));

	if (dmactrl & HOST1X_CHANNEL_DMACTRL_DMASTOP ||
	    !ch->cdma.push_buffer.mapped) {
		FUNC2(o, "inactive\n\n");
		return;
	}

	if (class == HOST1X_CLASS_HOST1X && offset == HOST1X_UCLASS_WAIT_SYNCPT)
		FUNC2(o, "waiting on syncpt\n");
	else
		FUNC2(o, "active class %02x, offset %04x\n",
				    class, offset);

	FUNC2(o, "DMAPUT %08x, DMAGET %08x, DMACTL %08x\n",
			    dmaput, dmaget, dmactrl);
	FUNC2(o, "CHANNELSTAT %02x\n", ch_stat);

	FUNC3(o, cdma);
	FUNC2(o, "\n");
}