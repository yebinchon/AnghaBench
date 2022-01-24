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
struct TYPE_5__ {scalar_t__ bo; } ;
struct TYPE_6__ {TYPE_1__ tv; } ;
struct amdgpu_cs_parser {unsigned int num_post_deps; unsigned int nchunks; TYPE_2__ uf_entry; scalar_t__ job; TYPE_3__* chunks; scalar_t__ bo_list; TYPE_4__* ctx; int /*<<< orphan*/  fence; TYPE_3__* post_deps; int /*<<< orphan*/  validated; int /*<<< orphan*/  ticket; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  kdata; struct TYPE_7__* chain; int /*<<< orphan*/  syncobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct amdgpu_bo* FUNC10 (scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct amdgpu_cs_parser *parser, int error,
				  bool backoff)
{
	unsigned i;

	if (error && backoff)
		FUNC9(&parser->ticket,
					   &parser->validated);

	for (i = 0; i < parser->num_post_deps; i++) {
		FUNC5(parser->post_deps[i].syncobj);
		FUNC6(parser->post_deps[i].chain);
	}
	FUNC6(parser->post_deps);

	FUNC4(parser->fence);

	if (parser->ctx) {
		FUNC8(&parser->ctx->lock);
		FUNC2(parser->ctx);
	}
	if (parser->bo_list)
		FUNC0(parser->bo_list);

	for (i = 0; i < parser->nchunks; i++)
		FUNC7(parser->chunks[i].kdata);
	FUNC6(parser->chunks);
	if (parser->job)
		FUNC3(parser->job);
	if (parser->uf_entry.tv.bo) {
		struct amdgpu_bo *uf = FUNC10(parser->uf_entry.tv.bo);

		FUNC1(&uf);
	}
}