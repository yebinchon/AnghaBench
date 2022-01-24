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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int /*<<< orphan*/  crtc; int /*<<< orphan*/  connector; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_4__ {int pipe; } ;

/* Variables and functions */
 int BLM_PWM_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector_state const*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(const struct drm_connector_state *old_conn_state)
{
	struct intel_connector *connector = FUNC5(old_conn_state->connector);
	struct drm_i915_private *dev_priv = FUNC4(connector->base.dev);
	enum pipe pipe = FUNC6(old_conn_state->crtc)->pipe;
	u32 tmp;

	FUNC3(old_conn_state, 0);

	tmp = FUNC0(FUNC2(pipe));
	FUNC1(FUNC2(pipe), tmp & ~BLM_PWM_ENABLE);
}