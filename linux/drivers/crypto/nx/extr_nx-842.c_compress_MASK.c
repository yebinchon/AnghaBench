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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  unsigned int u16 ;
struct nx842_crypto_param {unsigned int iremain; unsigned int oremain; int /*<<< orphan*/ * out; int /*<<< orphan*/ * in; } ;
struct nx842_crypto_header_group {void* uncompressed_length; void* compressed_length; int /*<<< orphan*/  padding; } ;
struct nx842_crypto_ctx {int /*<<< orphan*/ * dbounce; int /*<<< orphan*/  wmem; TYPE_1__* driver; int /*<<< orphan*/ * sbounce; } ;
struct nx842_constraints {unsigned int minimum; unsigned int multiple; unsigned int maximum; int alignment; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int (* compress ) (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BOUNCE_BUFFER_SIZE ; 
 int /*<<< orphan*/  COMP_BUSY_TIMEOUT ; 
 int EBUSY ; 
 int ENOSPC ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned int,...) ; 
 unsigned int FUNC10 (unsigned int,unsigned int) ; 
 unsigned int FUNC11 (unsigned int,unsigned int) ; 
 int FUNC12 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct nx842_crypto_param*,unsigned int,int) ; 

__attribute__((used)) static int FUNC14(struct nx842_crypto_ctx *ctx,
		    struct nx842_crypto_param *p,
		    struct nx842_crypto_header_group *g,
		    struct nx842_constraints *c,
		    u16 *ignore,
		    unsigned int hdrsize)
{
	unsigned int slen = p->iremain, dlen = p->oremain, tmplen;
	unsigned int adj_slen = slen;
	u8 *src = p->in, *dst = p->out;
	int ret, dskip = 0;
	ktime_t timeout;

	if (p->iremain == 0)
		return -EOVERFLOW;

	if (p->oremain == 0 || hdrsize + c->minimum > dlen)
		return -ENOSPC;

	if (slen % c->multiple)
		adj_slen = FUNC11(slen, c->multiple);
	if (slen < c->minimum)
		adj_slen = c->minimum;
	if (slen > c->maximum)
		adj_slen = slen = c->maximum;
	if (adj_slen > slen || (u64)src % c->alignment) {
		adj_slen = FUNC8(adj_slen, BOUNCE_BUFFER_SIZE);
		slen = FUNC8(slen, BOUNCE_BUFFER_SIZE);
		if (adj_slen > slen)
			FUNC7(ctx->sbounce + slen, 0, adj_slen - slen);
		FUNC6(ctx->sbounce, src, slen);
		src = ctx->sbounce;
		slen = adj_slen;
		FUNC9("using comp sbounce buffer, len %x\n", slen);
	}

	dst += hdrsize;
	dlen -= hdrsize;

	if ((u64)dst % c->alignment) {
		dskip = (int)(FUNC0(dst, c->alignment) - dst);
		dst += dskip;
		dlen -= dskip;
	}
	if (dlen % c->multiple)
		dlen = FUNC10(dlen, c->multiple);
	if (dlen < c->minimum) {
nospc:
		dst = ctx->dbounce;
		dlen = FUNC8(p->oremain, BOUNCE_BUFFER_SIZE);
		dlen = FUNC10(dlen, c->multiple);
		dskip = 0;
		FUNC9("using comp dbounce buffer, len %x\n", dlen);
	}
	if (dlen > c->maximum)
		dlen = c->maximum;

	tmplen = dlen;
	timeout = FUNC3(FUNC5(), COMP_BUSY_TIMEOUT);
	do {
		dlen = tmplen; /* reset dlen, if we're retrying */
		ret = ctx->driver->compress(src, slen, dst, &dlen, ctx->wmem);
		/* possibly we should reduce the slen here, instead of
		 * retrying with the dbounce buffer?
		 */
		if (ret == -ENOSPC && dst != ctx->dbounce)
			goto nospc;
	} while (ret == -EBUSY && FUNC4(FUNC5(), timeout));
	if (ret)
		return ret;

	dskip += hdrsize;

	if (dst == ctx->dbounce)
		FUNC6(p->out + dskip, dst, dlen);

	g->padding = FUNC1(dskip);
	g->compressed_length = FUNC2(dlen);
	g->uncompressed_length = FUNC2(slen);

	if (p->iremain < slen) {
		*ignore = slen - p->iremain;
		slen = p->iremain;
	}

	FUNC9("compress slen %x ignore %x dlen %x padding %x\n",
		 slen, *ignore, dlen, dskip);

	return FUNC13(p, slen, dskip + dlen);
}