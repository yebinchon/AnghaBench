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
typedef  scalar_t__ u16 ;
struct nx842_crypto_param {unsigned int iremain; unsigned int oremain; unsigned int ototal; int /*<<< orphan*/ * out; int /*<<< orphan*/ * in; } ;
struct nx842_crypto_header_group {int /*<<< orphan*/  uncompressed_length; int /*<<< orphan*/  compressed_length; int /*<<< orphan*/  padding; } ;
struct nx842_crypto_header {int groups; struct nx842_crypto_header_group* group; int /*<<< orphan*/  ignore; int /*<<< orphan*/  magic; } ;
struct nx842_crypto_ctx {int /*<<< orphan*/  lock; struct nx842_crypto_header header; TYPE_1__* driver; } ;
struct nx842_constraints {int dummy; } ;
struct crypto_tfm {int dummy; } ;
struct TYPE_2__ {struct nx842_constraints* constraints; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOVERFLOW ; 
 int NX842_CRYPTO_GROUP_MAX ; 
 int FUNC0 (int) ; 
 scalar_t__ NX842_CRYPTO_MAGIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nx842_constraints*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct nx842_crypto_ctx* FUNC4 (struct crypto_tfm*) ; 
 int FUNC5 (struct nx842_crypto_ctx*,struct nx842_crypto_param*,struct nx842_crypto_header_group*,struct nx842_constraints*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct nx842_crypto_header*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct crypto_tfm *tfm,
			    const u8 *src, unsigned int slen,
			    u8 *dst, unsigned int *dlen)
{
	struct nx842_crypto_ctx *ctx = FUNC4(tfm);
	struct nx842_crypto_header *hdr;
	struct nx842_crypto_param p;
	struct nx842_constraints c = *ctx->driver->constraints;
	int n, ret, hdr_len;
	u16 ignore = 0;

	FUNC2(&c);

	p.in = (u8 *)src;
	p.iremain = slen;
	p.out = dst;
	p.oremain = *dlen;
	p.ototal = 0;

	*dlen = 0;

	hdr = (struct nx842_crypto_header *)src;

	FUNC9(&ctx->lock);

	/* If it doesn't start with our header magic number, assume it's a raw
	 * 842 compressed buffer and pass it directly to the hardware driver
	 */
	if (FUNC1(hdr->magic) != NX842_CRYPTO_MAGIC) {
		struct nx842_crypto_header_group g = {
			.padding =		0,
			.compressed_length =	FUNC3(p.iremain),
			.uncompressed_length =	FUNC3(p.oremain),
		};

		ret = FUNC5(ctx, &p, &g, &c, 0);
		if (ret)
			goto unlock;

		goto success;
	}

	if (!hdr->groups) {
		FUNC8("header has no groups\n");
		ret = -EINVAL;
		goto unlock;
	}
	if (hdr->groups > NX842_CRYPTO_GROUP_MAX) {
		FUNC8("header has too many groups %x, max %x\n",
		       hdr->groups, NX842_CRYPTO_GROUP_MAX);
		ret = -EINVAL;
		goto unlock;
	}

	hdr_len = FUNC0(hdr->groups);
	if (hdr_len > slen) {
		ret = -EOVERFLOW;
		goto unlock;
	}

	FUNC6(&ctx->header, src, hdr_len);
	hdr = &ctx->header;

	for (n = 0; n < hdr->groups; n++) {
		/* ignore applies to last group */
		if (n + 1 == hdr->groups)
			ignore = FUNC1(hdr->ignore);

		ret = FUNC5(ctx, &p, &hdr->group[n], &c, ignore);
		if (ret)
			goto unlock;
	}

success:
	*dlen = p.ototal;

	FUNC7("decompress total slen %x dlen %x\n", slen, *dlen);

	ret = 0;

unlock:
	FUNC10(&ctx->lock);

	return ret;
}