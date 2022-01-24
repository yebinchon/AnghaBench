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
typedef  int /*<<< orphan*/  u32 ;
struct i915_wa_list {int count; struct i915_wa* list; } ;
struct i915_wa {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;
struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {int (* emit_flush ) (struct i915_request*,int /*<<< orphan*/ ) ;struct i915_wa_list ctx_wa_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMIT_BARRIER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct i915_request*,int) ; 
 int FUNC6 (struct i915_request*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i915_request*,int /*<<< orphan*/ ) ; 

int FUNC8(struct i915_request *rq)
{
	struct i915_wa_list *wal = &rq->engine->ctx_wa_list;
	struct i915_wa *wa;
	unsigned int i;
	u32 *cs;
	int ret;

	if (wal->count == 0)
		return 0;

	ret = rq->engine->emit_flush(rq, EMIT_BARRIER);
	if (ret)
		return ret;

	cs = FUNC5(rq, (wal->count * 2 + 2));
	if (FUNC0(cs))
		return FUNC2(cs);

	*cs++ = FUNC1(wal->count);
	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
		*cs++ = FUNC3(wa->reg);
		*cs++ = wa->val;
	}
	*cs++ = MI_NOOP;

	FUNC4(rq, cs);

	ret = rq->engine->emit_flush(rq, EMIT_BARRIER);
	if (ret)
		return ret;

	return 0;
}