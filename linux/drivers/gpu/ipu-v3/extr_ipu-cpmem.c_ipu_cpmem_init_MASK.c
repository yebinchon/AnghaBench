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
struct ipu_soc {struct ipu_cpmem* cpmem_priv; } ;
struct ipu_cpmem {struct ipu_soc* ipu; int /*<<< orphan*/  base; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SZ_128K ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,unsigned long,int /*<<< orphan*/ ) ; 
 struct ipu_cpmem* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ipu_soc *ipu, struct device *dev, unsigned long base)
{
	struct ipu_cpmem *cpmem;

	cpmem = FUNC2(dev, sizeof(*cpmem), GFP_KERNEL);
	if (!cpmem)
		return -ENOMEM;

	ipu->cpmem_priv = cpmem;

	FUNC3(&cpmem->lock);
	cpmem->base = FUNC1(dev, base, SZ_128K);
	if (!cpmem->base)
		return -ENOMEM;

	FUNC0(dev, "CPMEM base: 0x%08lx remapped to %p\n",
		base, cpmem->base);
	cpmem->ipu = ipu;

	return 0;
}