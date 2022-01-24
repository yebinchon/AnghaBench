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
struct sha256_state {int /*<<< orphan*/  buf; int /*<<< orphan*/  state; int /*<<< orphan*/  count; } ;
struct sha1_state {int /*<<< orphan*/  buffer; int /*<<< orphan*/  state; int /*<<< orphan*/  count; } ;
struct qce_sha_reqctx {unsigned long flags; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int FUNC4 (unsigned long) ; 
 struct qce_sha_reqctx* FUNC5 (struct ahash_request*) ; 
 int FUNC6 (struct ahash_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct ahash_request *req, const void *in)
{
	struct qce_sha_reqctx *rctx = FUNC5(req);
	unsigned long flags = rctx->flags;
	bool hmac = FUNC4(flags);
	int ret = -EINVAL;

	if (FUNC0(flags) || FUNC1(flags)) {
		const struct sha1_state *state = in;

		ret = FUNC6(req, state->count, state->state,
					state->buffer, hmac);
	} else if (FUNC2(flags) || FUNC3(flags)) {
		const struct sha256_state *state = in;

		ret = FUNC6(req, state->count, state->state,
					state->buf, hmac);
	}

	return ret;
}