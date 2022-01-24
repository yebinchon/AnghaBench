#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct mock_dmabuf {int npages; int /*<<< orphan*/ * pages; } ;
struct dma_buf {int dummy; } ;
struct TYPE_4__ {int size; struct mock_dmabuf* priv; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dma_buf* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct dma_buf*) ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dma_buf* FUNC4 (TYPE_1__*) ; 
 TYPE_1__ exp_info ; 
 int /*<<< orphan*/  FUNC5 (struct mock_dmabuf*) ; 
 struct mock_dmabuf* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mock_dmabuf_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dma_buf *FUNC8(int npages)
{
	struct mock_dmabuf *mock;
	FUNC0(exp_info);
	struct dma_buf *dmabuf;
	int i;

	mock = FUNC6(sizeof(*mock) + npages * sizeof(struct page *),
		       GFP_KERNEL);
	if (!mock)
		return FUNC1(-ENOMEM);

	mock->npages = npages;
	for (i = 0; i < npages; i++) {
		mock->pages[i] = FUNC3(GFP_KERNEL);
		if (!mock->pages[i])
			goto err;
	}

	exp_info.ops = &mock_dmabuf_ops;
	exp_info.size = npages * PAGE_SIZE;
	exp_info.flags = O_CLOEXEC;
	exp_info.priv = mock;

	dmabuf = FUNC4(&exp_info);
	if (FUNC2(dmabuf))
		goto err;

	return dmabuf;

err:
	while (i--)
		FUNC7(mock->pages[i]);
	FUNC5(mock);
	return FUNC1(-ENOMEM);
}