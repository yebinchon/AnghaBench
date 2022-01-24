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
struct drm_file {int magic; TYPE_1__* master; } ;
struct drm_device {int /*<<< orphan*/  master_mutex; } ;
struct drm_auth {int magic; } ;
struct TYPE_2__ {int /*<<< orphan*/  magic_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,struct drm_file*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	struct drm_auth *auth = data;
	int ret = 0;

	FUNC2(&dev->master_mutex);
	if (!file_priv->magic) {
		ret = FUNC1(&file_priv->master->magic_map, file_priv,
				1, 0, GFP_KERNEL);
		if (ret >= 0)
			file_priv->magic = ret;
	}
	auth->magic = file_priv->magic;
	FUNC3(&dev->master_mutex);

	FUNC0("%u\n", auth->magic);

	return ret < 0 ? ret : 0;
}