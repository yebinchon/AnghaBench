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
struct pseudo_fs_context {int /*<<< orphan*/ * dops; } ;
struct fs_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BUF_MAGIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  dma_buf_dentry_ops ; 
 struct pseudo_fs_context* FUNC0 (struct fs_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct fs_context *fc)
{
	struct pseudo_fs_context *ctx;

	ctx = FUNC0(fc, DMA_BUF_MAGIC);
	if (!ctx)
		return -ENOMEM;
	ctx->dops = &dma_buf_dentry_ops;
	return 0;
}