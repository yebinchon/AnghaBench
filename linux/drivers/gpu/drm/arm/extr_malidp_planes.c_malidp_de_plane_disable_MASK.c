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
struct malidp_plane {TYPE_1__* layer; int /*<<< orphan*/  hwdev; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 int LAYER_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LAYER_FLOWCFG_MASK ; 
 scalar_t__ MALIDP_LAYER_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 struct malidp_plane* FUNC2 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC3(struct drm_plane *plane,
				    struct drm_plane_state *state)
{
	struct malidp_plane *mp = FUNC2(plane);

	FUNC1(mp->hwdev,
			    LAYER_ENABLE | FUNC0(LAYER_FLOWCFG_MASK),
			    mp->layer->base + MALIDP_LAYER_CONTROL);
}