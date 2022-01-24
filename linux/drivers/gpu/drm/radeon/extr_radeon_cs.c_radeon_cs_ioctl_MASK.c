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
struct radeon_device {int /*<<< orphan*/  exclusive_lock; int /*<<< orphan*/  family; int /*<<< orphan*/  dev; scalar_t__ in_reset; int /*<<< orphan*/  accel_working; } ;
struct radeon_cs_parser {int /*<<< orphan*/  family; int /*<<< orphan*/  dev; struct radeon_device* rdev; struct drm_file* filp; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EAGAIN ; 
 int EBUSY ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_cs_parser*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct radeon_device*,int) ; 
 int FUNC4 (struct radeon_device*,struct radeon_cs_parser*) ; 
 int FUNC5 (struct radeon_device*,struct radeon_cs_parser*) ; 
 int FUNC6 (struct radeon_device*,struct radeon_cs_parser*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_cs_parser*,int,int) ; 
 int FUNC8 (struct radeon_cs_parser*,void*) ; 
 int FUNC9 (struct radeon_cs_parser*) ; 
 int FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_cs_parser*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct drm_device *dev, void *data, struct drm_file *filp)
{
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_cs_parser parser;
	int r;

	FUNC1(&rdev->exclusive_lock);
	if (!rdev->accel_working) {
		FUNC12(&rdev->exclusive_lock);
		return -EBUSY;
	}
	if (rdev->in_reset) {
		FUNC12(&rdev->exclusive_lock);
		r = FUNC10(rdev);
		if (!r)
			r = -EAGAIN;
		return r;
	}
	/* initialize parser */
	FUNC2(&parser, 0, sizeof(struct radeon_cs_parser));
	parser.filp = filp;
	parser.rdev = rdev;
	parser.dev = rdev->dev;
	parser.family = rdev->family;
	r = FUNC8(&parser, data);
	if (r) {
		FUNC0("Failed to initialize parser !\n");
		FUNC7(&parser, r, false);
		FUNC12(&rdev->exclusive_lock);
		r = FUNC3(rdev, r);
		return r;
	}

	r = FUNC5(rdev, &parser);
	if (!r) {
		r = FUNC9(&parser);
		if (r && r != -ERESTARTSYS)
			FUNC0("Failed to parse relocation %d!\n", r);
	}

	if (r) {
		FUNC7(&parser, r, false);
		FUNC12(&rdev->exclusive_lock);
		r = FUNC3(rdev, r);
		return r;
	}

	FUNC11(&parser);

	r = FUNC4(rdev, &parser);
	if (r) {
		goto out;
	}
	r = FUNC6(rdev, &parser);
	if (r) {
		goto out;
	}
out:
	FUNC7(&parser, r, true);
	FUNC12(&rdev->exclusive_lock);
	r = FUNC3(rdev, r);
	return r;
}