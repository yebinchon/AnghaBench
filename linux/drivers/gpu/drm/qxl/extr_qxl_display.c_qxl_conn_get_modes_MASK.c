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
struct qxl_output {size_t index; } ;
struct qxl_head {int width; int height; } ;
struct qxl_device {TYPE_1__* client_monitors_config; } ;
struct drm_device {struct qxl_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;
struct TYPE_2__ {struct qxl_head* heads; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_connector*,int,int) ; 
 struct qxl_output* FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (struct drm_connector*) ; 
 scalar_t__ FUNC4 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC5(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;
	struct qxl_device *qdev = dev->dev_private;
	struct qxl_output *output = FUNC1(connector);
	unsigned int pwidth = 1024;
	unsigned int pheight = 768;
	int ret = 0;

	if (qdev->client_monitors_config) {
		struct qxl_head *head;
		head = &qdev->client_monitors_config->heads[output->index];
		if (head->width)
			pwidth = head->width;
		if (head->height)
			pheight = head->height;
	}

	ret += FUNC0(connector, 8192, 8192);
	ret += FUNC3(connector);
	ret += FUNC4(connector);
	FUNC2(connector, pwidth, pheight);
	return ret;
}