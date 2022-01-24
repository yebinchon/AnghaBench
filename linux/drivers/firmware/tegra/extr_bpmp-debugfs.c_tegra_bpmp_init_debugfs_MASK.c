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
struct tegra_bpmp {int /*<<< orphan*/  dev; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  MRQ_DEBUGFS ; 
 size_t SZ_256K ; 
 int FUNC0 (struct tegra_bpmp*,void*,size_t,struct dentry*) ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,size_t const,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t const,void*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tegra_bpmp*,int /*<<< orphan*/ ,size_t const,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_bpmp*,int /*<<< orphan*/ ) ; 

int FUNC7(struct tegra_bpmp *bpmp)
{
	dma_addr_t phys;
	void *virt;
	const size_t sz = SZ_256K;
	size_t nbytes;
	int ret;
	struct dentry *root;

	if (!FUNC6(bpmp, MRQ_DEBUGFS))
		return 0;

	root = FUNC1("bpmp", NULL);
	if (!root)
		return -ENOMEM;

	virt = FUNC3(bpmp->dev, sz, &phys,
				  GFP_KERNEL | GFP_DMA32);
	if (!virt) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC5(bpmp, phys, sz, &nbytes);
	if (ret < 0)
		goto free;

	ret = FUNC0(bpmp, virt, nbytes, root);
free:
	FUNC4(bpmp->dev, sz, virt, phys);
out:
	if (ret < 0)
		FUNC2(root);

	return ret;
}