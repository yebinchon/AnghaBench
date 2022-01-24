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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {int /*<<< orphan*/ * eld; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  const FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 struct drm_i915_private* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct drm_connector *connector,
			       i915_reg_t reg_eldv, u32 bits_eldv,
			       i915_reg_t reg_elda, u32 bits_elda,
			       i915_reg_t reg_edid)
{
	struct drm_i915_private *dev_priv = FUNC3(connector->dev);
	const u8 *eld = connector->eld;
	u32 tmp;
	int i;

	tmp = FUNC0(reg_eldv);
	tmp &= bits_eldv;

	if (!tmp)
		return false;

	tmp = FUNC0(reg_elda);
	tmp &= ~bits_elda;
	FUNC1(reg_elda, tmp);

	for (i = 0; i < FUNC2(eld) / 4; i++)
		if (FUNC0(reg_edid) != *((const u32 *)eld + i))
			return false;

	return true;
}