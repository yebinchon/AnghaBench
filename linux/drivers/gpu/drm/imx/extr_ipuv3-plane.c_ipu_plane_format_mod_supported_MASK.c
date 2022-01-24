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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ipu_soc {int dummy; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {struct ipu_soc* ipu; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_FORMAT_MOD_LINEAR ; 
 int FUNC0 (struct ipu_soc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipu_soc*) ; 
 TYPE_1__* FUNC2 (struct drm_plane*) ; 

__attribute__((used)) static bool FUNC3(struct drm_plane *plane,
					   uint32_t format, uint64_t modifier)
{
	struct ipu_soc *ipu = FUNC2(plane)->ipu;

	/* linear is supported for all planes and formats */
	if (modifier == DRM_FORMAT_MOD_LINEAR)
		return true;

	/* without a PRG there are no supported modifiers */
	if (!FUNC1(ipu))
		return false;

	return FUNC0(ipu, format, modifier);
}