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
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCH_ADPA ; 
 int /*<<< orphan*/  PCH_DP_B ; 
 int /*<<< orphan*/  PCH_DP_C ; 
 int /*<<< orphan*/  PCH_DP_D ; 
 int /*<<< orphan*/  PCH_HDMIB ; 
 int /*<<< orphan*/  PCH_HDMIC ; 
 int /*<<< orphan*/  PCH_HDMID ; 
 int /*<<< orphan*/  PCH_LVDS ; 
 int /*<<< orphan*/  PORT_B ; 
 int /*<<< orphan*/  PORT_C ; 
 int /*<<< orphan*/  PORT_D ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv,
				      enum pipe pipe)
{
	enum pipe port_pipe;

	FUNC1(dev_priv, pipe, PORT_B, PCH_DP_B);
	FUNC1(dev_priv, pipe, PORT_C, PCH_DP_C);
	FUNC1(dev_priv, pipe, PORT_D, PCH_DP_D);

	FUNC0(FUNC3(dev_priv, PCH_ADPA, &port_pipe) &&
			port_pipe == pipe,
			"PCH VGA enabled on transcoder %c, should be disabled\n",
			FUNC5(pipe));

	FUNC0(FUNC4(dev_priv, PCH_LVDS, &port_pipe) &&
			port_pipe == pipe,
			"PCH LVDS enabled on transcoder %c, should be disabled\n",
			FUNC5(pipe));

	/* PCH SDVOB multiplex with HDMIB */
	FUNC2(dev_priv, pipe, PORT_B, PCH_HDMIB);
	FUNC2(dev_priv, pipe, PORT_C, PCH_HDMIC);
	FUNC2(dev_priv, pipe, PORT_D, PCH_HDMID);
}