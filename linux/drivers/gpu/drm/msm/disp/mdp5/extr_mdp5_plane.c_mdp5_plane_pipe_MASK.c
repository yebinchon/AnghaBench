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
struct mdp5_plane_state {TYPE_1__* hwpipe; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;
typedef  enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;
struct TYPE_2__ {int pipe; } ;

/* Variables and functions */
 int SSPP_NONE ; 
 scalar_t__ FUNC0 (int) ; 
 struct mdp5_plane_state* FUNC1 (int /*<<< orphan*/ ) ; 

enum mdp5_pipe FUNC2(struct drm_plane *plane)
{
	struct mdp5_plane_state *pstate = FUNC1(plane->state);

	if (FUNC0(!pstate->hwpipe))
		return SSPP_NONE;

	return pstate->hwpipe->pipe;
}