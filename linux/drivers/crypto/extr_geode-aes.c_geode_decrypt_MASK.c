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
struct TYPE_2__ {int /*<<< orphan*/  cip; } ;
struct geode_aes_op {scalar_t__ keylen; int /*<<< orphan*/  dir; int /*<<< orphan*/  len; scalar_t__ flags; int /*<<< orphan*/  mode; void* dst; void* src; TYPE_1__ fallback; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  AES_DIR_DECRYPT ; 
 scalar_t__ AES_KEYSIZE_128 ; 
 int /*<<< orphan*/  AES_MODE_ECB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 struct geode_aes_op* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (struct geode_aes_op*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
	struct geode_aes_op *op = FUNC1(tfm);

	if (FUNC3(op->keylen != AES_KEYSIZE_128)) {
		FUNC0(op->fallback.cip, out, in);
		return;
	}

	op->src = (void *) in;
	op->dst = (void *) out;
	op->mode = AES_MODE_ECB;
	op->flags = 0;
	op->len = AES_BLOCK_SIZE;
	op->dir = AES_DIR_DECRYPT;

	FUNC2(op);
}