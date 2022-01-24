#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct parser_exec_state {size_t ring_id; TYPE_2__* vgpu; } ;
struct intel_gvt {struct drm_i915_private* dev_priv; } ;
struct drm_i915_private {TYPE_1__** engine; } ;
struct TYPE_4__ {struct intel_gvt* gvt; } ;
struct TYPE_3__ {unsigned int mmio_base; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct parser_exec_state*,unsigned int) ; 
 unsigned int FUNC2 (struct parser_exec_state*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,...) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_gvt*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct parser_exec_state*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static int FUNC8(struct parser_exec_state *s,
		unsigned int offset, unsigned int index, char *cmd)
{
	struct intel_gvt *gvt = s->vgpu->gvt;
	unsigned int data;
	u32 ring_base;
	u32 nopid;
	struct drm_i915_private *dev_priv = s->vgpu->gvt->dev_priv;

	if (!FUNC7(cmd, "lri"))
		data = FUNC2(s, index + 1);
	else {
		FUNC3("Unexpected forcenonpriv 0x%x write from cmd %s\n",
			offset, cmd);
		return -EINVAL;
	}

	ring_base = dev_priv->engine[s->ring_id]->mmio_base;
	nopid = FUNC4(FUNC0(ring_base));

	if (!FUNC5(gvt, data) &&
			data != nopid) {
		FUNC3("Unexpected forcenonpriv 0x%x LRI write, value=0x%x\n",
			offset, data);
		FUNC6(s, FUNC1(s, index), nopid);
		return 0;
	}
	return 0;
}