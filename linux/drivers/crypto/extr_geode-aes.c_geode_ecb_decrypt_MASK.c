#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct geode_aes_op {scalar_t__ keylen; unsigned int len; int /*<<< orphan*/  dir; int /*<<< orphan*/  mode; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 unsigned int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  AES_DIR_DECRYPT ; 
 scalar_t__ AES_KEYSIZE_128 ; 
 int /*<<< orphan*/  AES_MODE_ECB ; 
 int FUNC0 (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC2 (struct blkcipher_desc*,struct blkcipher_walk*) ; 
 struct geode_aes_op* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int) ; 
 int FUNC5 (struct geode_aes_op*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct blkcipher_desc *desc,
		  struct scatterlist *dst, struct scatterlist *src,
		  unsigned int nbytes)
{
	struct geode_aes_op *op = FUNC3(desc->tfm);
	struct blkcipher_walk walk;
	int err, ret;

	if (FUNC6(op->keylen != AES_KEYSIZE_128))
		return FUNC4(desc, dst, src, nbytes);

	FUNC1(&walk, dst, src, nbytes);
	err = FUNC2(desc, &walk);

	while ((nbytes = walk.nbytes)) {
		op->src = walk.src.virt.addr,
		op->dst = walk.dst.virt.addr;
		op->mode = AES_MODE_ECB;
		op->len = nbytes - (nbytes % AES_BLOCK_SIZE);
		op->dir = AES_DIR_DECRYPT;

		ret = FUNC5(op);
		nbytes -= ret;
		err = FUNC0(desc, &walk, nbytes);
	}

	return err;
}