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
typedef  int /*<<< orphan*/  u32 ;
struct lima_device {int /*<<< orphan*/  ddev; } ;
struct lima_bo {int /*<<< orphan*/  gem; int /*<<< orphan*/  va; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct lima_bo* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lima_bo*) ; 
 struct lima_bo* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct lima_bo *FUNC7(struct lima_device *dev, u32 size, u32 flags)
{
	struct lima_bo *bo;
	int err;

	size = FUNC2(size);

	bo = FUNC5(sizeof(*bo), GFP_KERNEL);
	if (!bo)
		return FUNC0(-ENOMEM);

	FUNC6(&bo->lock);
	FUNC1(&bo->va);

	err = FUNC3(dev->ddev, &bo->gem, size);
	if (err) {
		FUNC4(bo);
		return FUNC0(err);
	}

	return bo;
}