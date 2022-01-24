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
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,...) ; 
 int PIPE_B ; 
 int FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
				   enum pipe pipe, enum port port,
				   i915_reg_t dp_reg)
{
	enum pipe port_pipe;
	bool state;

	state = FUNC2(dev_priv, dp_reg, port, &port_pipe);

	FUNC1(state && port_pipe == pipe,
			"PCH DP %c enabled on transcoder %c, should be disabled\n",
			FUNC4(port), FUNC3(pipe));

	FUNC1(FUNC0(dev_priv) && !state && port_pipe == PIPE_B,
			"IBX PCH DP %c still using transcoder B\n",
			FUNC4(port));
}