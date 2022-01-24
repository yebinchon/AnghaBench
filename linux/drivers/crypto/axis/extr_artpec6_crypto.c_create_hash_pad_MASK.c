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
typedef  unsigned int u64 ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
#define  regk_crypto_hmac_sha1 131 
#define  regk_crypto_hmac_sha256 130 
#define  regk_crypto_sha1 129 
#define  regk_crypto_sha256 128 

__attribute__((used)) static size_t
FUNC3(int oper, unsigned char *dst, u64 dgstlen, u64 bitcount)
{
	unsigned int mod, target, diff, pad_bytes, size_bytes;
	__be64 bits = FUNC0(bitcount);

	switch (oper) {
	case regk_crypto_sha1:
	case regk_crypto_sha256:
	case regk_crypto_hmac_sha1:
	case regk_crypto_hmac_sha256:
		target = 448 / 8;
		mod = 512 / 8;
		size_bytes = 8;
		break;
	default:
		target = 896 / 8;
		mod = 1024 / 8;
		size_bytes = 16;
		break;
	}

	target -= 1;
	diff = dgstlen & (mod - 1);
	pad_bytes = diff > target ? target + mod - diff : target - diff;

	FUNC2(dst + 1, 0, pad_bytes);
	dst[0] = 0x80;

	if (size_bytes == 16) {
		FUNC2(dst + 1 + pad_bytes, 0, 8);
		FUNC1(dst + 1 + pad_bytes + 8, &bits, 8);
	} else {
		FUNC1(dst + 1 + pad_bytes, &bits, 8);
	}

	return pad_bytes + size_bytes + 1;
}