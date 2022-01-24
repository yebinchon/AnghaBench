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
typedef  scalar_t__ u16 ;
struct nx842_crypto_param {unsigned int oremain; scalar_t__ iremain; int /*<<< orphan*/ * out; int /*<<< orphan*/ * in; } ;
struct nx842_crypto_header_group {int /*<<< orphan*/  compressed_length; int /*<<< orphan*/  padding; int /*<<< orphan*/  uncompressed_length; } ;
struct nx842_crypto_ctx {int /*<<< orphan*/ * dbounce; int /*<<< orphan*/  wmem; TYPE_1__* driver; int /*<<< orphan*/ * sbounce; } ;
struct nx842_constraints {unsigned int multiple; unsigned int minimum; unsigned int maximum; int alignment; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int (* decompress ) (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 unsigned int BOUNCE_BUFFER_SIZE ; 
 int /*<<< orphan*/  DECOMP_BUSY_TIMEOUT ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOSPC ; 
 int EOVERFLOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC7 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 unsigned int FUNC10 (unsigned int,unsigned int) ; 
 unsigned int FUNC11 (unsigned int,unsigned int) ; 
 int FUNC12 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC14 (struct nx842_crypto_param*,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC15(struct nx842_crypto_ctx *ctx,
		      struct nx842_crypto_param *p,
		      struct nx842_crypto_header_group *g,
		      struct nx842_constraints *c,
		      u16 ignore)
{
	unsigned int slen = FUNC1(g->compressed_length);
	unsigned int required_len = FUNC1(g->uncompressed_length);
	unsigned int dlen = p->oremain, tmplen;
	unsigned int adj_slen = slen;
	u8 *src = p->in, *dst = p->out;
	u16 padding = FUNC0(g->padding);
	int ret, spadding = 0;
	ktime_t timeout;

	if (!slen || !required_len)
		return -EINVAL;

	if (p->iremain <= 0 || padding + slen > p->iremain)
		return -EOVERFLOW;

	if (p->oremain <= 0 || required_len - ignore > p->oremain)
		return -ENOSPC;

	src += padding;

	if (slen % c->multiple)
		adj_slen = FUNC11(slen, c->multiple);
	if (slen < c->minimum)
		adj_slen = c->minimum;
	if (slen > c->maximum)
		goto usesw;
	if (slen < adj_slen || (u64)src % c->alignment) {
		/* we can append padding bytes because the 842 format defines
		 * an "end" template (see lib/842/842_decompress.c) and will
		 * ignore any bytes following it.
		 */
		if (slen < adj_slen)
			FUNC6(ctx->sbounce + slen, 0, adj_slen - slen);
		FUNC5(ctx->sbounce, src, slen);
		src = ctx->sbounce;
		spadding = adj_slen - slen;
		slen = adj_slen;
		FUNC8("using decomp sbounce buffer, len %x\n", slen);
	}

	if (dlen % c->multiple)
		dlen = FUNC10(dlen, c->multiple);
	if (dlen < required_len || (u64)dst % c->alignment) {
		dst = ctx->dbounce;
		dlen = FUNC7(required_len, BOUNCE_BUFFER_SIZE);
		FUNC8("using decomp dbounce buffer, len %x\n", dlen);
	}
	if (dlen < c->minimum)
		goto usesw;
	if (dlen > c->maximum)
		dlen = c->maximum;

	tmplen = dlen;
	timeout = FUNC2(FUNC4(), DECOMP_BUSY_TIMEOUT);
	do {
		dlen = tmplen; /* reset dlen, if we're retrying */
		ret = ctx->driver->decompress(src, slen, dst, &dlen, ctx->wmem);
	} while (ret == -EBUSY && FUNC3(FUNC4(), timeout));
	if (ret) {
usesw:
		/* reset everything, sw doesn't have constraints */
		src = p->in + padding;
		slen = FUNC1(g->compressed_length);
		spadding = 0;
		dst = p->out;
		dlen = p->oremain;
		if (dlen < required_len) { /* have ignore bytes */
			dst = ctx->dbounce;
			dlen = BOUNCE_BUFFER_SIZE;
		}
		FUNC9("using software 842 decompression\n");
		ret = FUNC13(src, slen, dst, &dlen);
	}
	if (ret)
		return ret;

	slen -= spadding;

	dlen -= ignore;
	if (ignore)
		FUNC8("ignoring last %x bytes\n", ignore);

	if (dst == ctx->dbounce)
		FUNC5(p->out, dst, dlen);

	FUNC8("decompress slen %x padding %x dlen %x ignore %x\n",
		 slen, padding, dlen, ignore);

	return FUNC14(p, slen + padding, dlen);
}