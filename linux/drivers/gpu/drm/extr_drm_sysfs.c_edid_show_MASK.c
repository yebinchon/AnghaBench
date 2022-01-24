#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct drm_connector {TYPE_3__* dev; TYPE_1__* edid_blob_ptr; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  size_t loff_t ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {TYPE_2__ mode_config; } ;
struct TYPE_4__ {unsigned char* data; size_t length; } ;

/* Variables and functions */
 struct device* FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_connector* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct file *filp, struct kobject *kobj,
			 struct bin_attribute *attr, char *buf, loff_t off,
			 size_t count)
{
	struct device *connector_dev = FUNC0(kobj);
	struct drm_connector *connector = FUNC4(connector_dev);
	unsigned char *edid;
	size_t size;
	ssize_t ret = 0;

	FUNC2(&connector->dev->mode_config.mutex);
	if (!connector->edid_blob_ptr)
		goto unlock;

	edid = connector->edid_blob_ptr->data;
	size = connector->edid_blob_ptr->length;
	if (!edid)
		goto unlock;

	if (off >= size)
		goto unlock;

	if (off + count > size)
		count = size - off;
	FUNC1(buf, edid + off, count);

	ret = count;
unlock:
	FUNC3(&connector->dev->mode_config.mutex);

	return ret;
}