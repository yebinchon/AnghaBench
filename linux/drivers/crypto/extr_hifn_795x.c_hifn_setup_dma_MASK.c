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
struct scatterlist {unsigned int offset; unsigned int length; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int flags; struct scatterlist* cache; } ;
struct hifn_request_context {TYPE_1__ walk; } ;
struct hifn_device {int dummy; } ;
struct hifn_context {int dummy; } ;

/* Variables and functions */
 int ASYNC_FLAGS_MISALIGNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hifn_device*,struct hifn_context*,struct hifn_request_context*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct hifn_device*,struct page*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hifn_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hifn_device*,struct page*,unsigned int,unsigned int,int) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 struct page* FUNC6 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC7(struct hifn_device *dev,
		struct hifn_context *ctx, struct hifn_request_context *rctx,
		struct scatterlist *src, struct scatterlist *dst,
		unsigned int nbytes, void *priv)
{
	struct scatterlist *t;
	struct page *spage, *dpage;
	unsigned int soff, doff;
	unsigned int n, len;

	n = nbytes;
	while (n) {
		spage = FUNC6(src);
		soff = src->offset;
		len = FUNC5(src->length, n);

		FUNC4(dev, spage, soff, len, n - len == 0);

		src++;
		n -= len;
	}

	t = &rctx->walk.cache[0];
	n = nbytes;
	while (n) {
		if (t->length && rctx->walk.flags & ASYNC_FLAGS_MISALIGNED) {
			FUNC0(!FUNC6(t));
			dpage = FUNC6(t);
			doff = 0;
			len = t->length;
		} else {
			FUNC0(!FUNC6(dst));
			dpage = FUNC6(dst);
			doff = dst->offset;
			len = dst->length;
		}
		len = FUNC5(len, n);

		FUNC2(dev, dpage, doff, len, n - len == 0);

		dst++;
		t++;
		n -= len;
	}

	FUNC1(dev, ctx, rctx, priv, nbytes);
	FUNC3(dev);
	return 0;
}