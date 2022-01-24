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
struct intel_vgpu {int /*<<< orphan*/  id; } ;
struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int GEN9_MOCS_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (struct i915_request*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct intel_vgpu *vgpu,
				     struct i915_request *req)
{
	unsigned int index;
	u32 *cs;

	cs = FUNC7(req, 2 * GEN9_MOCS_SIZE / 2 + 2);
	if (FUNC1(cs))
		return FUNC3(cs);

	*cs++ = FUNC2(GEN9_MOCS_SIZE / 2);

	for (index = 0; index < GEN9_MOCS_SIZE / 2; index++) {
		*cs++ = FUNC5(FUNC0(index));
		*cs++ = FUNC8(vgpu, FUNC0(index));
		FUNC4("add lri reg pair 0x%x:0x%x in inhibit ctx, vgpu:%d, rind_id:%d\n",
			      *(cs-2), *(cs-1), vgpu->id, req->engine->id);

	}

	*cs++ = MI_NOOP;
	FUNC6(req, cs);

	return 0;
}