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
struct tmc_drvdata {TYPE_1__* csdev; } ;
struct etr_buf {int /*<<< orphan*/  mode; int /*<<< orphan*/  refcount; scalar_t__ size; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct etr_buf* FUNC0 (int) ; 
 int /*<<< orphan*/  ETR_MODE_CATU ; 
 int /*<<< orphan*/  ETR_MODE_ETR_SG ; 
 int /*<<< orphan*/  ETR_MODE_FLAT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SZ_1M ; 
 int /*<<< orphan*/  TMC_ETR_SG ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct etr_buf*) ; 
 struct etr_buf* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tmc_drvdata*) ; 
 int FUNC7 (struct tmc_drvdata*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct tmc_drvdata*,struct etr_buf*,int,void**) ; 

__attribute__((used)) static struct etr_buf *FUNC9(struct tmc_drvdata *drvdata,
					 ssize_t size, int flags,
					 int node, void **pages)
{
	int rc = -ENOMEM;
	bool has_etr_sg, has_iommu;
	bool has_sg, has_catu;
	struct etr_buf *etr_buf;
	struct device *dev = &drvdata->csdev->dev;

	has_etr_sg = FUNC7(drvdata, TMC_ETR_SG);
	has_iommu = FUNC2(dev->parent);
	has_catu = !!FUNC6(drvdata);

	has_sg = has_catu || has_etr_sg;

	etr_buf = FUNC4(sizeof(*etr_buf), GFP_KERNEL);
	if (!etr_buf)
		return FUNC0(-ENOMEM);

	etr_buf->size = size;

	/*
	 * If we have to use an existing list of pages, we cannot reliably
	 * use a contiguous DMA memory (even if we have an IOMMU). Otherwise,
	 * we use the contiguous DMA memory if at least one of the following
	 * conditions is true:
	 *  a) The ETR cannot use Scatter-Gather.
	 *  b) we have a backing IOMMU
	 *  c) The requested memory size is smaller (< 1M).
	 *
	 * Fallback to available mechanisms.
	 *
	 */
	if (!pages &&
	    (!has_sg || has_iommu || size < SZ_1M))
		rc = FUNC8(ETR_MODE_FLAT, drvdata,
					    etr_buf, node, pages);
	if (rc && has_etr_sg)
		rc = FUNC8(ETR_MODE_ETR_SG, drvdata,
					    etr_buf, node, pages);
	if (rc && has_catu)
		rc = FUNC8(ETR_MODE_CATU, drvdata,
					    etr_buf, node, pages);
	if (rc) {
		FUNC3(etr_buf);
		return FUNC0(rc);
	}

	FUNC5(&etr_buf->refcount, 1);
	FUNC1(dev, "allocated buffer of size %ldKB in mode %d\n",
		(unsigned long)size >> 10, etr_buf->mode);
	return etr_buf;
}