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
struct msm_edp {int /*<<< orphan*/  ctrl; } ;
struct edp_bridge {struct msm_edp* edp; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct edp_bridge* FUNC2 (struct drm_bridge*) ; 

__attribute__((used)) static void FUNC3(struct drm_bridge *bridge)
{
	struct edp_bridge *edp_bridge = FUNC2(bridge);
	struct msm_edp *edp = edp_bridge->edp;

	FUNC0("");
	FUNC1(edp->ctrl, true);
}