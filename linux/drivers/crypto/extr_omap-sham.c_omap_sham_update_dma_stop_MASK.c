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
struct omap_sham_reqctx {int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;
struct omap_sham_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FLAGS_DMA_ACTIVE ; 
 struct omap_sham_reqctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct omap_sham_dev *dd)
{
	struct omap_sham_reqctx *ctx = FUNC0(dd->req);

	FUNC2(dd->dev, ctx->sg, ctx->sg_len, DMA_TO_DEVICE);

	FUNC1(FLAGS_DMA_ACTIVE, &dd->flags);

	return 0;
}