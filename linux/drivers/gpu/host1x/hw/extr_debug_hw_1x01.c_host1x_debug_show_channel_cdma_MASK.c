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
struct output {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mapped; } ;
struct host1x_cdma {TYPE_1__ push_buffer; } ;
struct host1x_channel {struct host1x_cdma cdma; int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
struct host1x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST1X_CHANNEL_DMACTRL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  HOST1X_CHANNEL_DMAGET ; 
 int /*<<< orphan*/  HOST1X_CHANNEL_DMAPUT ; 
 int /*<<< orphan*/  HOST1X_CLASS_HOST1X ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  HOST1X_UCLASS_WAIT_SYNCPT ; 
 int /*<<< orphan*/  HOST1X_UCLASS_WAIT_SYNCPT_BASE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct host1x_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct output*,char*,...) ; 
 int FUNC9 (struct host1x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct output*,struct host1x_cdma*) ; 

__attribute__((used)) static void FUNC11(struct host1x *host,
					   struct host1x_channel *ch,
					   struct output *o)
{
	struct host1x_cdma *cdma = &ch->cdma;
	u32 dmaput, dmaget, dmactrl;
	u32 cbstat, cbread;
	u32 val, base, baseval;

	dmaput = FUNC7(ch, HOST1X_CHANNEL_DMAPUT);
	dmaget = FUNC7(ch, HOST1X_CHANNEL_DMAGET);
	dmactrl = FUNC7(ch, HOST1X_CHANNEL_DMACTRL);
	cbread = FUNC9(host, FUNC1(ch->id));
	cbstat = FUNC9(host, FUNC2(ch->id));

	FUNC8(o, "%u-%s: ", ch->id, FUNC6(ch->dev));

	if (FUNC0(dmactrl) ||
	    !ch->cdma.push_buffer.mapped) {
		FUNC8(o, "inactive\n\n");
		return;
	}

	if (FUNC3(cbstat) == HOST1X_CLASS_HOST1X &&
	    FUNC4(cbstat) ==
			HOST1X_UCLASS_WAIT_SYNCPT)
		FUNC8(o, "waiting on syncpt %d val %d\n",
				    cbread >> 24, cbread & 0xffffff);
	else if (FUNC3(cbstat) ==
				HOST1X_CLASS_HOST1X &&
		 FUNC4(cbstat) ==
				HOST1X_UCLASS_WAIT_SYNCPT_BASE) {
		base = (cbread >> 16) & 0xff;
		baseval =
			FUNC9(host, FUNC5(base));
		val = cbread & 0xffff;
		FUNC8(o, "waiting on syncpt %d val %d (base %d = %d; offset = %d)\n",
				    cbread >> 24, baseval + val, base,
				    baseval, val);
	} else
		FUNC8(o, "active class %02x, offset %04x, val %08x\n",
				    FUNC3(cbstat),
				    FUNC4(cbstat),
				    cbread);

	FUNC8(o, "DMAPUT %08x, DMAGET %08x, DMACTL %08x\n",
			    dmaput, dmaget, dmactrl);
	FUNC8(o, "CBREAD %08x, CBSTAT %08x\n", cbread, cbstat);

	FUNC10(o, cdma);
	FUNC8(o, "\n");
}