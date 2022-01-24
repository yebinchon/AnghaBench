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
struct dma_buf {int /*<<< orphan*/  lock; scalar_t__ name; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct dma_buf* d_fsdata; } ;

/* Variables and functions */
 int DMA_BUF_NAME_LEN ; 
 char* FUNC0 (struct dentry*,char*,int,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (char*,scalar_t__,int) ; 

__attribute__((used)) static char *FUNC4(struct dentry *dentry, char *buffer, int buflen)
{
	struct dma_buf *dmabuf;
	char name[DMA_BUF_NAME_LEN];
	size_t ret = 0;

	dmabuf = dentry->d_fsdata;
	FUNC1(&dmabuf->lock);
	if (dmabuf->name)
		ret = FUNC3(name, dmabuf->name, DMA_BUF_NAME_LEN);
	FUNC2(&dmabuf->lock);

	return FUNC0(dentry, buffer, buflen, "/%s:%s",
			     dentry->d_name.name, ret > 0 ? name : "");
}