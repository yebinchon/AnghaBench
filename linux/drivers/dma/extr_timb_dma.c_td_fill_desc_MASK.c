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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct timb_dma_chan {int /*<<< orphan*/  chan; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int USHRT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct scatterlist*) ; 
 int FUNC4 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC5(struct timb_dma_chan *td_chan, u8 *dma_desc,
	struct scatterlist *sg, bool last)
{
	if (FUNC4(sg) > USHRT_MAX) {
		FUNC2(FUNC0(&td_chan->chan), "Too big sg element\n");
		return -EINVAL;
	}

	/* length must be word aligned */
	if (FUNC4(sg) % sizeof(u32)) {
		FUNC2(FUNC0(&td_chan->chan), "Incorrect length: %d\n",
			FUNC4(sg));
		return -EINVAL;
	}

	FUNC1(FUNC0(&td_chan->chan), "desc: %p, addr: 0x%llx\n",
		dma_desc, (unsigned long long)FUNC3(sg));

	dma_desc[7] = (FUNC3(sg) >> 24) & 0xff;
	dma_desc[6] = (FUNC3(sg) >> 16) & 0xff;
	dma_desc[5] = (FUNC3(sg) >> 8) & 0xff;
	dma_desc[4] = (FUNC3(sg) >> 0) & 0xff;

	dma_desc[3] = (FUNC4(sg) >> 8) & 0xff;
	dma_desc[2] = (FUNC4(sg) >> 0) & 0xff;

	dma_desc[1] = 0x00;
	dma_desc[0] = 0x21 | (last ? 0x02 : 0); /* tran, valid */

	return 0;
}