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
typedef  int /*<<< orphan*/  u32 ;
struct sg_mapping_iter {int length; int /*<<< orphan*/ * addr; } ;
struct omap_sham_reqctx {size_t digcnt; size_t total; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;
struct omap_sham_dev {TYPE_1__* pdata; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  req; } ;
struct TYPE_2__ {scalar_t__ (* poll_irq ) (struct omap_sham_dev*) ;int /*<<< orphan*/  (* trigger ) (struct omap_sham_dev*,size_t) ;int /*<<< orphan*/  (* write_ctrl ) (struct omap_sham_dev*,size_t,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (size_t,int) ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FLAGS_CPU ; 
 int /*<<< orphan*/  FLAGS_FINAL ; 
 int SG_MITER_ATOMIC ; 
 int SG_MITER_FROM_SG ; 
 int /*<<< orphan*/  FUNC1 (struct omap_sham_dev*,int) ; 
 struct omap_sham_reqctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,size_t,int) ; 
 int FUNC4 (struct omap_sham_reqctx*) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_sham_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC10 (struct sg_mapping_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sg_mapping_iter*) ; 
 int /*<<< orphan*/  FUNC12 (struct omap_sham_dev*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct omap_sham_dev*,size_t) ; 
 scalar_t__ FUNC14 (struct omap_sham_dev*) ; 

__attribute__((used)) static int FUNC15(struct omap_sham_dev *dd, size_t length,
			      int final)
{
	struct omap_sham_reqctx *ctx = FUNC2(dd->req);
	int count, len32, bs32, offset = 0;
	const u32 *buffer;
	int mlen;
	struct sg_mapping_iter mi;

	FUNC3(dd->dev, "xmit_cpu: digcnt: %d, length: %d, final: %d\n",
						ctx->digcnt, length, final);

	dd->pdata->write_ctrl(dd, length, final, 0);
	dd->pdata->trigger(dd, length);

	/* should be non-zero before next lines to disable clocks later */
	ctx->digcnt += length;
	ctx->total -= length;

	if (final)
		FUNC8(FLAGS_FINAL, &dd->flags); /* catch last interrupt */

	FUNC8(FLAGS_CPU, &dd->flags);

	len32 = FUNC0(length, sizeof(u32));
	bs32 = FUNC4(ctx) / sizeof(u32);

	FUNC10(&mi, ctx->sg, ctx->sg_len,
		       SG_MITER_FROM_SG | SG_MITER_ATOMIC);

	mlen = 0;

	while (len32) {
		if (dd->pdata->poll_irq(dd))
			return -ETIMEDOUT;

		for (count = 0; count < FUNC5(len32, bs32); count++, offset++) {
			if (!mlen) {
				FUNC9(&mi);
				mlen = mi.length;
				if (!mlen) {
					FUNC7("sg miter failure.\n");
					return -EINVAL;
				}
				offset = 0;
				buffer = mi.addr;
			}
			FUNC6(dd, FUNC1(dd, count),
					buffer[offset]);
			mlen -= 4;
		}
		len32 -= FUNC5(len32, bs32);
	}

	FUNC11(&mi);

	return -EINPROGRESS;
}