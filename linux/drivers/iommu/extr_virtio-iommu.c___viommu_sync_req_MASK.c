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
struct virtqueue {int dummy; } ;
struct viommu_request {size_t buf; size_t len; size_t write_offset; int /*<<< orphan*/  list; scalar_t__ writeback; } ;
struct viommu_dev {int /*<<< orphan*/  requests; int /*<<< orphan*/  request_lock; struct virtqueue** vqs; } ;

/* Variables and functions */
 size_t VIOMMU_REQUEST_VQ ; 
 int /*<<< orphan*/  VIRTIO_IOMMU_S_IOERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct viommu_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (size_t,size_t,int /*<<< orphan*/ ) ; 
 struct viommu_request* FUNC6 (struct virtqueue*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct virtqueue*) ; 

__attribute__((used)) static int FUNC8(struct viommu_dev *viommu)
{
	int ret = 0;
	unsigned int len;
	size_t write_len;
	struct viommu_request *req;
	struct virtqueue *vq = viommu->vqs[VIOMMU_REQUEST_VQ];

	FUNC0(&viommu->request_lock);

	FUNC7(vq);

	while (!FUNC3(&viommu->requests)) {
		len = 0;
		req = FUNC6(vq, &len);
		if (!req)
			continue;

		if (!len)
			FUNC5(req->buf, req->len,
					      VIRTIO_IOMMU_S_IOERR);

		write_len = req->len - req->write_offset;
		if (req->writeback && len == write_len)
			FUNC4(req->writeback, req->buf + req->write_offset,
			       write_len);

		FUNC2(&req->list);
		FUNC1(req);
	}

	return ret;
}