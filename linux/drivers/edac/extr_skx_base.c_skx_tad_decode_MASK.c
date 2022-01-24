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
typedef  int /*<<< orphan*/  u32 ;
struct decoded_addr {scalar_t__ addr; int sktways; int chanways; scalar_t__ chan_addr; int /*<<< orphan*/  channel; int /*<<< orphan*/  imc; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int SKX_MAX_TAD ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC11 (scalar_t__,int,int,scalar_t__) ; 
 int* skx_granularity ; 

__attribute__((used)) static bool FUNC12(struct decoded_addr *res)
{
	int i;
	u32 base, wayness, chnilvoffset;
	int skt_interleave_bit, chn_interleave_bit;
	u64 channel_addr;

	for (i = 0; i < SKX_MAX_TAD; i++) {
		FUNC0(res->dev, res->imc, i, base);
		FUNC2(res->dev, res->imc, i, wayness);
		if (FUNC3(base) <= res->addr && res->addr <= FUNC6(wayness))
			goto tad_found;
	}
	FUNC10(0, "No TAD entry for 0x%llx\n", res->addr);
	return false;

tad_found:
	res->sktways = FUNC8(wayness);
	res->chanways = FUNC4(wayness);
	skt_interleave_bit = skx_granularity[FUNC9(base)];
	chn_interleave_bit = skx_granularity[FUNC5(base)];

	FUNC1(res->dev, res->imc, res->channel, i, chnilvoffset);
	channel_addr = res->addr - FUNC7(chnilvoffset);

	if (res->chanways == 3 && skt_interleave_bit > chn_interleave_bit) {
		/* Must handle channel first, then socket */
		channel_addr = FUNC11(channel_addr, chn_interleave_bit,
						 res->chanways, channel_addr);
		channel_addr = FUNC11(channel_addr, skt_interleave_bit,
						 res->sktways, channel_addr);
	} else {
		/* Handle socket then channel. Preserve low bits from original address */
		channel_addr = FUNC11(channel_addr, skt_interleave_bit,
						 res->sktways, res->addr);
		channel_addr = FUNC11(channel_addr, chn_interleave_bit,
						 res->chanways, res->addr);
	}

	res->chan_addr = channel_addr;

	FUNC10(2, "0x%llx: chan_addr=0x%llx sktways=%d chanways=%d\n",
		 res->addr, res->chan_addr, res->sktways, res->chanways);
	return true;
}