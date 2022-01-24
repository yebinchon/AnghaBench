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
struct TYPE_2__ {int size; struct tegra_bpmp_message* data; } ;
struct tegra_bpmp_message {TYPE_1__ tx; int /*<<< orphan*/  mrq; int /*<<< orphan*/  addr; } ;
struct tegra_bpmp {int /*<<< orphan*/  dev; } ;
struct mrq_query_tag_request {TYPE_1__ tx; int /*<<< orphan*/  mrq; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  request ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  MRQ_QUERY_TAG ; 
 size_t TAG_SZ ; 
 void* FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_bpmp_message*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct tegra_bpmp*,struct tegra_bpmp_message*) ; 

__attribute__((used)) static int FUNC7(struct tegra_bpmp *bpmp, char *tag,
					   size_t size)
{
	struct mrq_query_tag_request request;
	struct tegra_bpmp_message msg;
	unsigned long flags;
	dma_addr_t phys;
	void *virt;
	int err;

	if (size != TAG_SZ)
		return -EINVAL;

	virt = FUNC0(bpmp->dev, TAG_SZ, &phys,
				  GFP_KERNEL | GFP_DMA32);
	if (!virt)
		return -ENOMEM;

	FUNC5(&request, 0, sizeof(request));
	request.addr = phys;

	FUNC5(&msg, 0, sizeof(msg));
	msg.mrq = MRQ_QUERY_TAG;
	msg.tx.data = &request;
	msg.tx.size = sizeof(request);

	FUNC3(flags);
	err = FUNC6(bpmp, &msg);
	FUNC2(flags);

	if (err == 0)
		FUNC4(tag, virt, TAG_SZ);

	FUNC1(bpmp->dev, TAG_SZ, virt, phys);

	return err;
}