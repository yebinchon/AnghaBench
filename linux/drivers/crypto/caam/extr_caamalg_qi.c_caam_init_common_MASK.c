#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct caam_drv_private {int era; } ;
struct TYPE_8__ {int algtype; } ;
struct TYPE_7__ {int algtype; } ;
struct caam_ctx {int /*<<< orphan*/ ** drv_ctx; int /*<<< orphan*/  lock; struct device* qidev; TYPE_2__ adata; TYPE_1__ cdata; TYPE_3__* jrdev; int /*<<< orphan*/  key_dma; int /*<<< orphan*/  dir; int /*<<< orphan*/  key; } ;
struct caam_alg_entry {int class1_alg_type; int class2_alg_type; } ;
struct TYPE_9__ {struct device* parent; } ;

/* Variables and functions */
 size_t DECRYPT ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 size_t ENCRYPT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int OP_TYPE_CLASS1_ALG ; 
 int OP_TYPE_CLASS2_ALG ; 
 int FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 struct caam_drv_private* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct caam_ctx *ctx, struct caam_alg_entry *caam,
			    bool uses_dkp)
{
	struct caam_drv_private *priv;
	struct device *dev;

	/*
	 * distribute tfms across job rings to ensure in-order
	 * crypto request processing per tfm
	 */
	ctx->jrdev = FUNC2();
	if (FUNC0(ctx->jrdev)) {
		FUNC8("Job Ring Device allocation for transform failed\n");
		return FUNC1(ctx->jrdev);
	}

	dev = ctx->jrdev->parent;
	priv = FUNC5(dev);
	if (priv->era >= 6 && uses_dkp)
		ctx->dir = DMA_BIDIRECTIONAL;
	else
		ctx->dir = DMA_TO_DEVICE;

	ctx->key_dma = FUNC6(dev, ctx->key, sizeof(ctx->key),
				      ctx->dir);
	if (FUNC7(dev, ctx->key_dma)) {
		FUNC4(dev, "unable to map key\n");
		FUNC3(ctx->jrdev);
		return -ENOMEM;
	}

	/* copy descriptor header template value */
	ctx->cdata.algtype = OP_TYPE_CLASS1_ALG | caam->class1_alg_type;
	ctx->adata.algtype = OP_TYPE_CLASS2_ALG | caam->class2_alg_type;

	ctx->qidev = dev;

	FUNC9(&ctx->lock);
	ctx->drv_ctx[ENCRYPT] = NULL;
	ctx->drv_ctx[DECRYPT] = NULL;

	return 0;
}