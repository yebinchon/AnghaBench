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
struct viommu_request {size_t len; scalar_t__ buf; int /*<<< orphan*/  list; scalar_t__ write_offset; void* writeback; } ;
struct viommu_dev {int /*<<< orphan*/  requests; int /*<<< orphan*/  request_lock; struct virtqueue** vqs; } ;
struct scatterlist {int dummy; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 size_t VIOMMU_REQUEST_VQ ; 
 int /*<<< orphan*/  FUNC0 (struct viommu_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct viommu_request*) ; 
 struct viommu_request* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (struct viommu_dev*,void*,size_t) ; 
 int FUNC8 (struct virtqueue*,struct scatterlist**,int,int,struct viommu_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct viommu_dev *viommu, void *buf, size_t len,
			    bool writeback)
{
	int ret;
	off_t write_offset;
	struct viommu_request *req;
	struct scatterlist top_sg, bottom_sg;
	struct scatterlist *sg[2] = { &top_sg, &bottom_sg };
	struct virtqueue *vq = viommu->vqs[VIOMMU_REQUEST_VQ];

	FUNC1(&viommu->request_lock);

	write_offset = FUNC7(viommu, buf, len);
	if (write_offset <= 0)
		return -EINVAL;

	req = FUNC3(sizeof(*req) + len, GFP_ATOMIC);
	if (!req)
		return -ENOMEM;

	req->len = len;
	if (writeback) {
		req->writeback = buf + write_offset;
		req->write_offset = write_offset;
	}
	FUNC5(&req->buf, buf, write_offset);

	FUNC6(&top_sg, req->buf, write_offset);
	FUNC6(&bottom_sg, req->buf + write_offset, len - write_offset);

	ret = FUNC8(vq, sg, 1, 1, req, GFP_ATOMIC);
	if (ret == -ENOSPC) {
		/* If the queue is full, sync and retry */
		if (!FUNC0(viommu))
			ret = FUNC8(vq, sg, 1, 1, req, GFP_ATOMIC);
	}
	if (ret)
		goto err_free;

	FUNC4(&req->list, &viommu->requests);
	return 0;

err_free:
	FUNC2(req);
	return ret;
}