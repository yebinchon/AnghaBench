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
struct sun4i_req_ctx {int byte_count; int len; int /*<<< orphan*/ * hash; int /*<<< orphan*/  buf; } ;
struct sha1_state {int count; int /*<<< orphan*/ * state; int /*<<< orphan*/  buffer; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct sun4i_req_ctx* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahash_request*) ; 

int FUNC3(struct ahash_request *areq, const void *in)
{
	struct sun4i_req_ctx *op = FUNC0(areq);
	const struct sha1_state *ictx = in;
	int i;

	FUNC2(areq);

	op->byte_count = ictx->count & ~0x3F;
	op->len = ictx->count & 0x3F;

	FUNC1(op->buf, ictx->buffer, op->len);

	for (i = 0; i < 5; i++)
		op->hash[i] = ictx->state[i];

	return 0;
}