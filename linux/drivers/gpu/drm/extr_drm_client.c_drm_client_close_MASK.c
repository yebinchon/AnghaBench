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
struct drm_device {int /*<<< orphan*/  filelist_mutex; } ;
struct drm_client_dev {TYPE_1__* file; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  lhead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct drm_client_dev *client)
{
	struct drm_device *dev = client->dev;

	FUNC2(&dev->filelist_mutex);
	FUNC1(&client->file->lhead);
	FUNC3(&dev->filelist_mutex);

	FUNC0(client->file);
}