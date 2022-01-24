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
struct drm_minor {unsigned int type; int index; int /*<<< orphan*/  kdev; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct drm_minor** FUNC2 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  drm_minor_lock ; 
 int /*<<< orphan*/  drm_minors_idr ; 
 int /*<<< orphan*/  FUNC3 (struct drm_minor*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_minor*) ; 
 struct drm_minor* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC12(struct drm_device *dev, unsigned int type)
{
	struct drm_minor *minor;
	unsigned long flags;
	int r;

	minor = FUNC9(sizeof(*minor), GFP_KERNEL);
	if (!minor)
		return -ENOMEM;

	minor->type = type;
	minor->dev = dev;

	FUNC5(GFP_KERNEL);
	FUNC10(&drm_minor_lock, flags);
	r = FUNC4(&drm_minors_idr,
		      NULL,
		      64 * type,
		      64 * (type + 1),
		      GFP_NOWAIT);
	FUNC11(&drm_minor_lock, flags);
	FUNC6();

	if (r < 0)
		goto err_free;

	minor->index = r;

	minor->kdev = FUNC3(minor);
	if (FUNC0(minor->kdev)) {
		r = FUNC1(minor->kdev);
		goto err_index;
	}

	*FUNC2(dev, type) = minor;
	return 0;

err_index:
	FUNC10(&drm_minor_lock, flags);
	FUNC7(&drm_minors_idr, minor->index);
	FUNC11(&drm_minor_lock, flags);
err_free:
	FUNC8(minor);
	return r;
}