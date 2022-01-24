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
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_client_dev {TYPE_1__* funcs; int /*<<< orphan*/  name; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_client_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_client_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct drm_client_dev *client)
{
	struct drm_device *dev = client->dev;

	FUNC0(dev->dev, "%s\n", client->name);

	FUNC2(client);
	FUNC1(client);
	FUNC3(dev);
	if (client->funcs)
		FUNC4(client->funcs->owner);
}