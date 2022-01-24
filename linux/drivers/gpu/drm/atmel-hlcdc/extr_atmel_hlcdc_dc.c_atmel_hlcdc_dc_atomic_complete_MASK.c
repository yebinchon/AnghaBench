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
struct drm_device {struct atmel_hlcdc_dc* dev_private; } ;
struct drm_atomic_state {int dummy; } ;
struct atmel_hlcdc_dc_commit {struct drm_atomic_state* state; struct drm_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int pending; TYPE_2__ wait; } ;
struct atmel_hlcdc_dc {TYPE_1__ commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_atomic_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct atmel_hlcdc_dc_commit*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC10(struct atmel_hlcdc_dc_commit *commit)
{
	struct drm_device *dev = commit->dev;
	struct atmel_hlcdc_dc *dc = dev->dev_private;
	struct drm_atomic_state *old_state = commit->state;

	/* Apply the atomic update. */
	FUNC1(dev, old_state);
	FUNC3(dev, old_state, 0);
	FUNC2(dev, old_state);

	FUNC4(dev, old_state);

	FUNC0(dev, old_state);

	FUNC5(old_state);

	/* Complete the commit, wake up any waiter. */
	FUNC7(&dc->commit.wait.lock);
	dc->commit.pending = false;
	FUNC9(&dc->commit.wait);
	FUNC8(&dc->commit.wait.lock);

	FUNC6(commit);
}