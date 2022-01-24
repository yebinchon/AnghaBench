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
struct drm_file {int /*<<< orphan*/  lhead; } ;
struct drm_device {int /*<<< orphan*/  filelist_mutex; int /*<<< orphan*/  filelist_internal; int /*<<< orphan*/  primary; } ;
struct drm_client_dev {struct drm_file* file; struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_file*) ; 
 int FUNC1 (struct drm_file*) ; 
 struct drm_file* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct drm_client_dev *client)
{
	struct drm_device *dev = client->dev;
	struct drm_file *file;

	file = FUNC2(dev->primary);
	if (FUNC0(file))
		return FUNC1(file);

	FUNC4(&dev->filelist_mutex);
	FUNC3(&file->lhead, &dev->filelist_internal);
	FUNC5(&dev->filelist_mutex);

	client->file = file;

	return 0;
}