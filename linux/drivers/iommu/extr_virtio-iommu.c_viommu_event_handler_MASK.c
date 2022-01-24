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
struct virtqueue {TYPE_1__* vdev; } ;
struct viommu_event {int head; int /*<<< orphan*/  fault; } ;
struct viommu_dev {int /*<<< orphan*/  dev; } ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {struct viommu_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int VIOMMU_FAULT_RESV_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,struct viommu_event*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct viommu_dev*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct virtqueue*,struct scatterlist*,int,struct viommu_event*,int /*<<< orphan*/ ) ; 
 struct viommu_event* FUNC4 (struct virtqueue*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtqueue*) ; 

__attribute__((used)) static void FUNC6(struct virtqueue *vq)
{
	int ret;
	unsigned int len;
	struct scatterlist sg[1];
	struct viommu_event *evt;
	struct viommu_dev *viommu = vq->vdev->priv;

	while ((evt = FUNC4(vq, &len)) != NULL) {
		if (len > sizeof(*evt)) {
			FUNC0(viommu->dev,
				"invalid event buffer (len %u != %zu)\n",
				len, sizeof(*evt));
		} else if (!(evt->head & VIOMMU_FAULT_RESV_MASK)) {
			FUNC2(viommu, &evt->fault);
		}

		FUNC1(sg, evt, sizeof(*evt));
		ret = FUNC3(vq, sg, 1, evt, GFP_ATOMIC);
		if (ret)
			FUNC0(viommu->dev, "could not add event buffer\n");
	}

	FUNC5(vq);
}