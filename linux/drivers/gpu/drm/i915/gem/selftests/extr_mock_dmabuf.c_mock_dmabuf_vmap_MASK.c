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
struct mock_dmabuf {int /*<<< orphan*/  npages; int /*<<< orphan*/  pages; } ;
struct dma_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_KERNEL ; 
 struct mock_dmabuf* FUNC0 (struct dma_buf*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC2(struct dma_buf *dma_buf)
{
	struct mock_dmabuf *mock = FUNC0(dma_buf);

	return FUNC1(mock->pages, mock->npages, 0, PAGE_KERNEL);
}