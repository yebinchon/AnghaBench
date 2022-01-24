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
struct vc4_vec {int /*<<< orphan*/  encoder; int /*<<< orphan*/  connector; } ;
struct vc4_dev {int /*<<< orphan*/ * vec; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct vc4_dev* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct device *dev, struct device *master,
			   void *data)
{
	struct drm_device *drm = FUNC0(master);
	struct vc4_dev *vc4 = FUNC3(drm);
	struct vc4_vec *vec = FUNC0(dev);

	FUNC4(vec->connector);
	FUNC1(vec->encoder);
	FUNC2(dev);

	vc4->vec = NULL;
}