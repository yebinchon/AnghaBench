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
typedef  unsigned long u32 ;
struct push_buffer {int size; int fence; unsigned long alloc_size; int /*<<< orphan*/  phys; int /*<<< orphan*/ * mapped; int /*<<< orphan*/  dma; scalar_t__ pos; } ;
struct iova {int dummy; } ;
struct host1x_cdma {int dummy; } ;
struct host1x {unsigned long iova_end; int /*<<< orphan*/  dev; int /*<<< orphan*/  iova; scalar_t__ domain; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HOST1X_PUSHBUFFER_SLOTS ; 
 int /*<<< orphan*/  IOMMU_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct iova*) ; 
 struct iova* FUNC1 (int /*<<< orphan*/ *,unsigned long,unsigned long,int) ; 
 struct host1x* FUNC2 (struct host1x_cdma*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct host1x*,struct push_buffer*) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct iova*) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ *) ; 
 struct host1x_cdma* FUNC10 (struct push_buffer*) ; 

__attribute__((used)) static int FUNC11(struct push_buffer *pb)
{
	struct host1x_cdma *cdma = FUNC10(pb);
	struct host1x *host1x = FUNC2(cdma);
	struct iova *alloc;
	u32 size;
	int err;

	pb->mapped = NULL;
	pb->phys = 0;
	pb->size = HOST1X_PUSHBUFFER_SLOTS * 8;

	size = pb->size + 4;

	/* initialize buffer pointers */
	pb->fence = pb->size - 8;
	pb->pos = 0;

	if (host1x->domain) {
		unsigned long shift;

		size = FUNC7(&host1x->iova, size);

		pb->mapped = FUNC3(host1x->dev, size, &pb->phys,
					  GFP_KERNEL);
		if (!pb->mapped)
			return -ENOMEM;

		shift = FUNC9(&host1x->iova);
		alloc = FUNC1(&host1x->iova, size >> shift,
				   host1x->iova_end >> shift, true);
		if (!alloc) {
			err = -ENOMEM;
			goto iommu_free_mem;
		}

		pb->dma = FUNC8(&host1x->iova, alloc);
		err = FUNC6(host1x->domain, pb->dma, pb->phys, size,
				IOMMU_READ);
		if (err)
			goto iommu_free_iova;
	} else {
		pb->mapped = FUNC3(host1x->dev, size, &pb->phys,
					  GFP_KERNEL);
		if (!pb->mapped)
			return -ENOMEM;

		pb->dma = pb->phys;
	}

	pb->alloc_size = size;

	FUNC5(host1x, pb);

	return 0;

iommu_free_iova:
	FUNC0(&host1x->iova, alloc);
iommu_free_mem:
	FUNC4(host1x->dev, size, pb->mapped, pb->phys);

	return err;
}