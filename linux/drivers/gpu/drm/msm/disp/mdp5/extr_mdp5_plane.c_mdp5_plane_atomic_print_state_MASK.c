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
struct mdp5_plane_state {char* premultiplied; char* zpos; char* alpha; int /*<<< orphan*/  stage; TYPE_2__* r_hwpipe; TYPE_1__* hwpipe; } ;
struct mdp5_kms {int caps; } ;
struct drm_printer {int dummy; } ;
struct drm_plane_state {int /*<<< orphan*/  plane; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int MDP_CAP_SRC_SPLIT ; 
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,char*) ; 
 struct mdp5_kms* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 struct mdp5_plane_state* FUNC3 (struct drm_plane_state const*) ; 

__attribute__((used)) static void
FUNC4(struct drm_printer *p,
		const struct drm_plane_state *state)
{
	struct mdp5_plane_state *pstate = FUNC3(state);
	struct mdp5_kms *mdp5_kms = FUNC1(state->plane);

	FUNC0(p, "\thwpipe=%s\n", pstate->hwpipe ?
			pstate->hwpipe->name : "(null)");
	if (mdp5_kms->caps & MDP_CAP_SRC_SPLIT)
		FUNC0(p, "\tright-hwpipe=%s\n",
			   pstate->r_hwpipe ? pstate->r_hwpipe->name :
					      "(null)");
	FUNC0(p, "\tpremultiplied=%u\n", pstate->premultiplied);
	FUNC0(p, "\tzpos=%u\n", pstate->zpos);
	FUNC0(p, "\talpha=%u\n", pstate->alpha);
	FUNC0(p, "\tstage=%s\n", FUNC2(pstate->stage));
}