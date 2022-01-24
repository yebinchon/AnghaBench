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
typedef  int /*<<< orphan*/  u32 ;
struct ipu_soc {struct ipu_csi** csi_priv; } ;
struct ipu_csi {int id; struct ipu_soc* ipu; int /*<<< orphan*/  base; struct clk* clk_ipu; int /*<<< orphan*/  module; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,unsigned long,int /*<<< orphan*/ ) ; 
 struct ipu_csi* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ipu_soc *ipu, struct device *dev, int id,
		 unsigned long base, u32 module, struct clk *clk_ipu)
{
	struct ipu_csi *csi;

	if (id > 1)
		return -ENODEV;

	csi = FUNC2(dev, sizeof(*csi), GFP_KERNEL);
	if (!csi)
		return -ENOMEM;

	ipu->csi_priv[id] = csi;

	FUNC3(&csi->lock);
	csi->module = module;
	csi->id = id;
	csi->clk_ipu = clk_ipu;
	csi->base = FUNC1(dev, base, PAGE_SIZE);
	if (!csi->base)
		return -ENOMEM;

	FUNC0(dev, "CSI%d base: 0x%08lx remapped to %p\n",
		id, base, csi->base);
	csi->ipu = ipu;

	return 0;
}