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
struct drm_file {int authenticated; TYPE_1__* master; } ;
struct drm_device {int /*<<< orphan*/  master_mutex; } ;
struct drm_auth {int /*<<< orphan*/  magic; } ;
struct TYPE_2__ {int /*<<< orphan*/  magic_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 struct drm_file* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct drm_device *dev, void *data,
		  struct drm_file *file_priv)
{
	struct drm_auth *auth = data;
	struct drm_file *file;

	FUNC0("%u\n", auth->magic);

	FUNC3(&dev->master_mutex);
	file = FUNC1(&file_priv->master->magic_map, auth->magic);
	if (file) {
		file->authenticated = 1;
		FUNC2(&file_priv->master->magic_map, NULL, auth->magic);
	}
	FUNC4(&dev->master_mutex);

	return file ? 0 : -EINVAL;
}