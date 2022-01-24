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
struct atmel_hlcdc_dc_commit {int /*<<< orphan*/  work; struct drm_atomic_state* state; struct drm_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {int pending; TYPE_2__ wait; } ;
struct atmel_hlcdc_dc {int /*<<< orphan*/  wq; TYPE_1__ commit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_hlcdc_dc_commit*) ; 
 int /*<<< orphan*/  atmel_hlcdc_dc_atomic_work ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_atomic_state*) ; 
 int FUNC4 (struct drm_device*,struct drm_atomic_state*) ; 
 scalar_t__ FUNC5 (struct drm_atomic_state*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct atmel_hlcdc_dc_commit*) ; 
 struct atmel_hlcdc_dc_commit* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_2__,int) ; 

__attribute__((used)) static int FUNC13(struct drm_device *dev,
					struct drm_atomic_state *state,
					bool async)
{
	struct atmel_hlcdc_dc *dc = dev->dev_private;
	struct atmel_hlcdc_dc_commit *commit;
	int ret;

	ret = FUNC4(dev, state);
	if (ret)
		return ret;

	/* Allocate the commit object. */
	commit = FUNC8(sizeof(*commit), GFP_KERNEL);
	if (!commit) {
		ret = -ENOMEM;
		goto error;
	}

	FUNC1(&commit->work, atmel_hlcdc_dc_atomic_work);
	commit->dev = dev;
	commit->state = state;

	FUNC10(&dc->commit.wait.lock);
	ret = FUNC12(dc->commit.wait,
					      !dc->commit.pending);
	if (ret == 0)
		dc->commit.pending = true;
	FUNC11(&dc->commit.wait.lock);

	if (ret)
		goto err_free;

	/* We have our own synchronization through the commit lock. */
	FUNC0(FUNC5(state, false) < 0);

	/* Swap state succeeded, this is the point of no return. */
	FUNC6(state);
	if (async)
		FUNC9(dc->wq, &commit->work);
	else
		FUNC2(commit);

	return 0;

err_free:
	FUNC7(commit);
error:
	FUNC3(dev, state);
	return ret;
}