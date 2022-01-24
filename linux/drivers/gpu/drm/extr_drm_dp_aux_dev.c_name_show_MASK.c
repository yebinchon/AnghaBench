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
struct drm_dp_aux_dev {int /*<<< orphan*/  refcount; TYPE_1__* aux; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  devt; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct drm_dp_aux_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  release_drm_dp_aux_dev ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			 struct device_attribute *attr, char *buf)
{
	ssize_t res;
	struct drm_dp_aux_dev *aux_dev =
		FUNC1(FUNC0(dev->devt));

	if (!aux_dev)
		return -ENODEV;

	res = FUNC3(buf, "%s\n", aux_dev->aux->name);
	FUNC2(&aux_dev->refcount, release_drm_dp_aux_dev);

	return res;
}