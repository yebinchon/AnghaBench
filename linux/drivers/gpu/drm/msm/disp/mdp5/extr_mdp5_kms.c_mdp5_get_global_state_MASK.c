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
struct msm_drm_private {int /*<<< orphan*/  kms; } ;
struct mdp5_kms {int /*<<< orphan*/  glob_state; int /*<<< orphan*/  glob_state_lock; } ;
struct mdp5_global_state {int dummy; } ;
struct drm_private_state {int dummy; } ;
struct drm_atomic_state {int /*<<< orphan*/  acquire_ctx; TYPE_1__* dev; } ;
struct TYPE_2__ {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 struct mdp5_global_state* FUNC0 (struct drm_private_state*) ; 
 struct mdp5_global_state* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_private_state*) ; 
 struct drm_private_state* FUNC3 (struct drm_atomic_state*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mdp5_global_state* FUNC5 (struct drm_private_state*) ; 
 struct mdp5_kms* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

struct mdp5_global_state *FUNC8(struct drm_atomic_state *s)
{
	struct msm_drm_private *priv = s->dev->dev_private;
	struct mdp5_kms *mdp5_kms = FUNC6(FUNC7(priv->kms));
	struct drm_private_state *priv_state;
	int ret;

	ret = FUNC4(&mdp5_kms->glob_state_lock, s->acquire_ctx);
	if (ret)
		return FUNC1(ret);

	priv_state = FUNC3(s, &mdp5_kms->glob_state);
	if (FUNC2(priv_state))
		return FUNC0(priv_state);

	return FUNC5(priv_state);
}