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
struct caam_hash_state {int buflen_0; int /*<<< orphan*/  finup; int /*<<< orphan*/  final; int /*<<< orphan*/  update; int /*<<< orphan*/  caam_ctx; int /*<<< orphan*/  buf_0; } ;
struct caam_export_state {int buflen; int /*<<< orphan*/  finup; int /*<<< orphan*/  final; int /*<<< orphan*/  update; int /*<<< orphan*/  caam_ctx; int /*<<< orphan*/  buf; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 struct caam_hash_state* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct caam_hash_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ahash_request *req, const void *in)
{
	struct caam_hash_state *state = FUNC0(req);
	const struct caam_export_state *export = in;

	FUNC2(state, 0, sizeof(*state));
	FUNC1(state->buf_0, export->buf, export->buflen);
	FUNC1(state->caam_ctx, export->caam_ctx, sizeof(state->caam_ctx));
	state->buflen_0 = export->buflen;
	state->update = export->update;
	state->final = export->final;
	state->finup = export->finup;

	return 0;
}