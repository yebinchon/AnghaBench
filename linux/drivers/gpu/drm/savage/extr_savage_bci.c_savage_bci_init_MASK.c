#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int func; } ;
typedef  TYPE_1__ drm_savage_init_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_file*) ; 
#define  SAVAGE_CLEANUP_BCI 129 
#define  SAVAGE_INIT_BCI 128 
 int FUNC1 (struct drm_device*) ; 
 int FUNC2 (struct drm_device*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_savage_init_t *init = data;

	FUNC0(dev, file_priv);

	switch (init->func) {
	case SAVAGE_INIT_BCI:
		return FUNC2(dev, init);
	case SAVAGE_CLEANUP_BCI:
		return FUNC1(dev);
	}

	return -EINVAL;
}